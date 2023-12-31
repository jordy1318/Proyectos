# -*- coding: utf-8 -*-
"""P2ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/17Sc4PAOyeieL-oYc3ODos4-iHLQQkH_q

CREACION DEL DATASET
"""

#crear una carpeta para cada datset
!mkdir sin_fractura
!mkdir fractura

# Commented out IPython magic to ensure Python compatibility.
#entrar a la carpeta y descomprimir el archivo zip
# %cd fractura
!unzip fractura_procesdadas.zip
# %cd ..

# %cd sin_fractura
!unzip SinFractura_procesadas.zip
# %cd ..

#borrar los archivos zip
!rm -rf /content/fractura/fractura_procesdadas.zip
!rm -rf /content/sin_fractura/SinFractura_procesadas.zip

#ver el numeor de imagenes del entrenamiento

!ls /content/sin_fractura/SinFractura_procesadas| wc -l
!ls /content/fractura/fractura_procesdadas | wc -l

#mostras las imagenes de las carpetas
import os
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

plt.figure(figsize=(20,20))

carpeta= '/content/sin_fractura/SinFractura_procesadas' # guarda la direccion de la carpeta
imagenes = os.listdir(carpeta)

j=0;
for i, nombreimg in enumerate(imagenes[:25]):
  plt.subplot(10,5,i+1)
  if nombreimg != ".ipynb_checkpoints" and nombreimg!=".DS_Store":  # archivo que no abre
    ima= mpimg.imread(carpeta + '/' + nombreimg)
    j+=1
    print(nombreimg, j)
    plt.imshow(ima)

#crear las carpetas para los dataset

!mkdir dataset
!mkdir dataset/fractura
!mkdir dataset/sinfractura2

#copiamos las imagenes a ls carpetas del data set, con el mismo numero de imagenes

import shutil

carpeta_fuente='/content/sin_fractura/SinFractura_procesadas'
carpeta_destino='/content/dataset/sinfractura2'

imagenes= os.listdir(carpeta_fuente)

j=0;
for i, nombreimg in enumerate(imagenes):
  if i < 51:
    if nombreimg != ".ipynb_checkpoints" and nombreimg!=".DS_Store": # archivo que esta dañado
      print(nombreimg, j)
      j+=1
      shutil.copy(carpeta_fuente + '/' + nombreimg, carpeta_destino + '/' +nombreimg)

!ls /content/dataset/sinfractura2 | wc -l

#copiamos las imagenes a ls carpetas del data set, con el mismo numero de imagenes

import shutil

carpeta_fuente='/content/fractura/fractura_procesdadas' #carpeta de donde se van a copiar las imagenes
carpeta_destino='/content/dataset/fractura' # carpeta en donde se van a pegar las imagenes

imagenes= os.listdir(carpeta_fuente)

j=0; # variable auxiliar que permite ver la cantidad de elementos copiados
for i, nombreimg in enumerate(imagenes):
  if i < 50: #menor a 50 para copiar exactamente 50 imagenes
    if nombreimg != ".ipynb_checkpoints" and nombreimg!=".DS_Store": # archivo que esta dañado
      print(nombreimg, j)
      j+=1
      shutil.copy(carpeta_fuente + '/' + nombreimg, carpeta_destino + '/' +nombreimg)

#conteo de los elementos de cada dataset
!ls /content/dataset/fractura | wc -l
!ls /content/dataset/sinfractura2 | wc -l

#aumento de datos con ImageDataGenerator
import tensorflow as tf
from keras_preprocessing.image import ImageDataGenerator

#creamos el dataset generador cone l aumento de dato s
datagen = ImageDataGenerator(
    rescale = 1. / 255, # asinamos un valor del 1-255
    rotation_range=50, # rotamos las imagenes
    validation_split= 0.2 # porcentaje de las imagenes que dejaremos para pruebas

)

#generandores para sets de entrenamiento y pruebas
#los se escogio las dimenciones 244 por que estas son las dimeniones que trabaja el modelo pre-entrenado y el batch size se asigno conforme al numero de imagenes que tiene cada set de datos
data_gen_entrenamiento = datagen.flow_from_directory('/content/dataset', target_size=(224,224) ,batch_size=32, class_mode='binary', shuffle=True,subset='training')

data_gen_pruebas = datagen.flow_from_directory('/content/dataset', target_size=(224,224) ,batch_size=5, class_mode='binary', shuffle=True,subset='validation')

"""CREACION DE REDES NEURONALES

"""

from tensorflow.keras.callbacks import TensorBoard #libreria que nos permite graficar la fucion de perdida

#creacion del modelo denso
modeloDenso= tf.keras.models.Sequential([
    tf.keras.layers.Flatten(input_shape=(224,224,3)), # el tamaño de las imagenes y el canar de color
    tf.keras.layers.Dense(244, activation= tf.nn.relu),
    tf.keras.layers.Dense(244, activation= tf.nn.relu),
    tf.keras.layers.Dense(1, activation= tf.nn.sigmoid)
])

#compilacion del modelo denso
modeloDenso.compile(
    optimizer='adam', #optimizador
    loss = 'binary_crossentropy', #funcion de perdida
    metrics=['accuracy'] #metrica

)

#entrenamiento del modelo denso
tensorboardDenso = TensorBoard(log_dir="logs/denso") #guarda los valores de perdida durante el entrenamiento para graficarlos
historial = modeloDenso.fit(
    data_gen_entrenamiento,epochs=50,batch_size=20, # se les asigna estos valores debido a la grafica de funcion de perdida. se determina en que epoca la red deja de aprender significativamente
    validation_data=data_gen_pruebas,
    callbacks=([tensorboardDenso])
)

"""AQUI INICIA LA RED NEURONAL CONVOLUCIONAL"""

from tensorflow.python.ops.math_ops import sigmoid
#creacion del  modelo convolucional

modeloCNN = tf.keras.Sequential([
    tf.keras.layers.Conv2D(32,(3,3), input_shape=(224,224,3),activation='relu'),
    tf.keras.layers.MaxPooling2D(2,2),
    tf.keras.layers.Conv2D(64,(3,3),activation='relu'),
    tf.keras.layers.MaxPooling2D(2,2),
    tf.keras.layers.Conv2D(128,(3,3),activation='relu'),
    tf.keras.layers.MaxPooling2D(2,2),

    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(units=200,activation='relu'),
    tf.keras.layers.Dense(units=1,activation=tf.nn.sigmoid)


])

#compilacion del modelo convolucional
modeloCNN.compile(
    optimizer='adam', #optimizador
    loss = 'binary_crossentropy', #funcion de perdida
    metrics=['accuracy']. # metrica

)

#entrenamiento del modelo convolucional
tensorboardCNN = TensorBoard(log_dir="logs/CNN")
historial = modeloCNN.fit(
    data_gen_entrenamiento,epochs=50,batch_size=20,# se les asigna estos valores debido a la grafica de funcion de perdida. se determina en que epoca la red deja de aprender significativamente
    validation_data=data_gen_pruebas,
     callbacks=([tensorboardCNN])

)

"""AQUI INICIA LA RED NEURONAL COVOLUCIONAL PREVIAMENTE ENTRENADA.


"""

#desacarga e implementacion de la red pre-entrenada
import tensorflow as tf
import tensorflow_hub as hub

url="https://tfhub.dev/google/tf2-preview/mobilenet_v2/feature_vector/4" # direccion donde se encuntra el modelo

mobilenetv2 = hub.KerasLayer(url, input_shape=[224,224,3]) #implementacion del modelo

mobilenetv2.trainable= False # congelamos los valores del peso que tiene la red

# agregamos una capa final
modeloPre= tf.keras.Sequential([
    mobilenetv2,
    tf.keras.layers.Dense(1,activation='sigmoid')
])

#compilar modelo pre-entenada
modeloPre.compile(
    optimizer='adam',
    loss = 'binary_crossentropy',
    metrics=['accuracy']

)

#entrenar
tensorboardPRE = TensorBoard(log_dir="logs/PRE")
historial= modeloPre.fit(
    data_gen_entrenamiento,epochs=50,batch_size=20, # se les asigna estos valores debido a la grafica de funcion de perdida. se determina en que epoca la red deja de aprender significativamente
    validation_data=data_gen_pruebas,
    callbacks=([tensorboardPRE])
)

"""GRAFICAS

"""

# Commented out IPython magic to ensure Python compatibility.
#desplegado de las graficas, con respecto a los resultados obtenidos en el entrenamiento
# %load_ext tensorboard
!kill 9276
# %tensorboard --logdir logs

"""PRUEBAS


"""

import numpy as np
from tensorflow.keras.utils import load_img, img_to_array
from keras.models import load_model

def prediccionCNN(file): #funcion que tiene como parametor un archivo
  x=load_img(file,target_size=(224,224)) #redimencionamiento de la imagen
  x=img_to_array(x) #conversion de los metadatos de la imagen en un arreglo
  x=np.expand_dims(x,axis=0) # expansion de las dimensiones con un angulo 0
  arreglo = modeloCNN.predict(x) # prediccion de la red con la imagen ingresada
  resultado= arreglo[0]
  print(resultado)
  if resultado  < 0.8 :
    print("sin fractura")
  else:
    print(" fractura")

def prediccionDenso(file): #funcion que tiene como parametor un archivo
  x=load_img(file,target_size=(224,224))  #redimencionamiento de la imagen
  x=img_to_array(x) #conversion de los metadatos de la imagen en un arreglo
  x=np.expand_dims(x,axis=0) # expansion de las dimensiones con un angulo 0
  arreglo = modeloDenso.predict(x)  # prediccion de la red con la imagen ingresada
  resultado= arreglo[0]
  if resultado == 0:
    print("sin fractura")
  else:
    print(" fractura")


def prediccionCNND(file): #funcion que tiene como parametor un archivo
  x=load_img(file,target_size=(224,224))  #redimencionamiento de la imagen
  x=img_to_array(x) #conversion de los metadatos de la imagen en un arreglo
  x=np.expand_dims(x,axis=0)# expansion de las dimensiones con un angulo 0
  arreglo = modeloPre.predict(x) # prediccion de la red con la imagen ingresada
  resultado= arreglo[0]
  print(resultado)
  if resultado  < 0.80 :
    print("sin fractura")
  else:
    print(" fractura")

#llamado a la funcion de prediccion
prediccionDenso('/content/foto1.jpg')
prediccionDenso('/content/foto2.jpeg')
prediccionDenso('/content/foto5.png')

#llamado a la funcion de prediccion
prediccionCNN('/content/foto1.jpg')
prediccionCNN('/content/foto2.jpeg')
prediccionCNN('/content/foto5.png')

#llamado a la funcion de prediccion
prediccionCNND('/content/foto1.jpg')
prediccionCNND('/content/foto2.jpeg')
prediccionCNND('/content/foto5.png')

carpeta_fuente='/content/sin_fractura/SinFractura_procesadas'


imagenes= os.listdir(carpeta_fuente)

j=0;
for i, nombreimg in enumerate(imagenes):
  print(nombreimg)
  prediccionDenso(carpeta_fuente + '/' + nombreimg)