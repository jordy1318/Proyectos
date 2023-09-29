from tkinter import*

ventana = Tk()
ventana.title("Calculadora") # crea la ventana pricipal 

texto = Entry(ventana,font=("calibri 20")) 
texto.grid(row =0 ,column =0, columnspan = 6, padx=10, pady =5) #crea la barra principal de texto


memoria= Entry(ventana,width=5)   
memoria.grid(row=1, column=1) #creamos la segunda barra que seria la memoria

indice=0 # indice para imprimir en barras de texto

#funciones

def click_boton (valor):  #toma el valor del boton y lo escribe en la barra de text
    global indice
    texto.insert(indice,valor)
    indice += 1

def borrar():  # elimina la barra de texto desde la posicion 0 hasta el final
    texto.delete(0,END)
    indice =0 # reiniciamos la posicion del string

def operacion(): 
    ecuacion = texto.get() #obtenemos un string de la caja de texto principal
    result = eval(ecuacion) #funcion en python que evalua operaciones dadas tipo string
    texto.delete(0,END) #borramos el texto anterior
    texto.insert(0,result) # insertamos el resultado
    indice=0 # reiniciamos la posicion del string

def copiar_texto():
    contenido = texto.get() #obtenemos el string de la caja principal
    ventana.clipboard_clear() 
    ventana.clipboard_append(contenido) #funciones de copiado

def pegar_texto():
    contenido = ventana.clipboard_get() #funcion de obtencion del valor copiado
    texto.insert("insert", contenido) # insertamos en la barra principal


def guardar_mem(): #funcion para guardar en memoria 
    limpiar_mem() #llamado a otra funcion de limpiado de barra de texto
    guardado=texto.get() #obtenemos el texto anterior en la barra principal 
    memoria.insert(0,guardado) # guardamos el texto en la barra de memoria


def recuperar_mem():
    mem = memoria.get() #recuperar el texto en la barra de memoria
    texto.insert(indice,mem) #insertarlo en la posicion del string de la barra principal


def limpiar_mem():
    memoria.delete(0,END) #elimina el valor almacenado en memoria


#Menu
#creacion del menu en la ventana
menu = Menu(ventana)
ventana.config(menu=menu)
menu_editar = Menu(menu)
menu.add_cascade(label="Editar", menu=menu_editar)
#agregaciond de las etiquetas con sus respetivas funciones
menu_editar.add_command(label="Copiar",command=lambda:copiar_texto()) 
menu_editar.add_command(label="Pegar",command=lambda:pegar_texto())

#Botones 

#creacion de los botones para los numeros y simbolos, la funcion definida es la de insertar en la barra principal
botones0= Button(ventana,text="0",width=5, height=2,command=lambda:click_boton(0))
botones1= Button(ventana,text="1",width=5, height=2,command=lambda:click_boton(1))
botones2= Button(ventana,text="2",width=5, height=2,command=lambda:click_boton(2))
botones3= Button(ventana,text="3",width=5, height=2,command=lambda:click_boton(3))
botones4= Button(ventana,text="4",width=5, height=2,command=lambda:click_boton(4))
botones5= Button(ventana,text="5",width=5, height=2,command=lambda:click_boton(5))
botones6= Button(ventana,text="6",width=5, height=2,command=lambda:click_boton(6))
botones7= Button(ventana,text="7",width=5, height=2,command=lambda:click_boton(7))
botones8= Button(ventana,text="8",width=5, height=2,command=lambda:click_boton(8))
botones9= Button(ventana,text="9",width=5, height=2,command=lambda:click_boton(9))

botones_multi= Button(ventana,text="x",width=5, height=2,command=lambda:click_boton("*"))
botones_di= Button(ventana,text="/",width=5, height=2,command=lambda:click_boton("/"))
botones_suma= Button(ventana,text="+",width=5, height=2,command=lambda:click_boton("+"))
botones_resta= Button(ventana,text="-",width=5, height=2,command=lambda:click_boton("-"))

botones_punto= Button(ventana,text=".",width=5, height=2,command=lambda:click_boton("."))
botones_paretesis1= Button(ventana,text="(",width=5, height=2,command=lambda:click_boton("("))
botones_paretesis2= Button(ventana,text=")",width=5, height=2,command=lambda:click_boton(")"))

#Creacion de los botones con funciones especiales
botones_borrar= Button(ventana,text="C",width=5, height=2,command=lambda:borrar())
botones_igual= Button(ventana,text="=",width=5, height=2,command=lambda:operacion())
botones_MC= Button(ventana,text="MC",width=5, height=2,command=lambda:limpiar_mem())
botones_MR= Button(ventana,text="MR",width=5, height=2,command=lambda:recuperar_mem())
botones_MS= Button(ventana,text="MS",width=5, height=2,command=lambda:guardar_mem())

#Display botones

botones_borrar.grid(row=1,column =4,padx=2,pady=2)
botones_paretesis2.grid(row=1,column=3,padx=2,pady=2)
botones_paretesis1.grid(row=1,column=2,padx=2,pady=2)


botones_MC.grid(row=1,column=0,padx=2,pady=2)
botones_MR.grid(row=2,column=0,padx=2,pady=2)
botones_MS.grid(row=3,column=0,padx=2,pady=2)

botones_suma.grid(row=5,column=4,padx=2,pady=2 )
botones_resta.grid(row=4,column=4,padx=2,pady=2 )
botones_di.grid(row=2,column=4,padx=2,pady=2 )
botones_multi.grid(row=3,column=4,padx=2,pady=2 )

botones7.grid(row=2,column=1,padx=2,pady=2)
botones8.grid(row=2,column=2,padx=2,pady=2)
botones9.grid(row=2,column=3,padx=2,pady=2)

botones4.grid(row=3,column=1,padx=2,pady=2)
botones5.grid(row=3,column=2,padx=2,pady=2)
botones6.grid(row=3,column=3,padx=2,pady=2)

botones1.grid(row=4,column=1,padx=2,pady=2)
botones2.grid(row=4,column=2,padx=2,pady=2)
botones3.grid(row=4,column=3,padx=2,pady=2)

botones0.grid(row=5,column=2,padx=2,pady=2)
botones_punto.grid(row=5,column=1,padx=2,pady=2)
botones_igual.grid(row=5,column=3,padx=2,pady=2)





ventana.mainloop()