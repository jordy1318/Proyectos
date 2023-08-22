/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package uam.patrones.proyecto.formas;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import uam.patrones.proyecto.compartido.Compartido;
import uam.patrones.proyecto.operaciones.DatosUsuario;
/**
 *
 * @author elimanaseszacariasperez
 */
public class MenuFrm extends javax.swing.JFrame {

    /**
     * Creates new form MenuFrm
     */
    public MenuFrm() {
        initComponents();
        cargarDatos();
    }

    
    private void cargarDatos(){
    
        DatosUsuario datos =new DatosUsuario();
        
        datos.nombreUsuario(Compartido.login);
        String descripcion= datos.descripcion(Compartido.tipoUsuario);
        
        
        lblNombre.setText(Compartido.nombreUsuario);
        lblDescripcion.setText(descripcion);
        
        
        if(Compartido.tipoUsuario.compareTo("admin")==0){
            
            btnOpcionA.setText("Consultar Inventario");
            btnOpcionB.setText("Alta de un Producto");
            btnOpcionC.setText("Alta de la linea de captura");
           
        
        }else{
        
         btnOpcionA.setText("Favor de entrar como Administrador");
            btnOpcionB.setVisible(false);
           
            
        
        }
    
    }
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblBienvenido = new javax.swing.JLabel();
        lblNombre = new javax.swing.JLabel();
        btnOpcionA = new javax.swing.JButton();
        btnOpcionB = new javax.swing.JButton();
        btnOpcionC = new javax.swing.JButton();
        lblDescripcion = new javax.swing.JLabel();
        btnCerrar = new javax.swing.JButton();
        lblBackGround = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblBienvenido.setFont(new java.awt.Font("Roboto Black", 1, 18)); // NOI18N
        lblBienvenido.setText("Bienvenido");
        getContentPane().add(lblBienvenido, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 30, -1, -1));

        lblNombre.setFont(new java.awt.Font("Roboto Black", 1, 18)); // NOI18N
        lblNombre.setText("jLabel2");
        getContentPane().add(lblNombre, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 30, -1, -1));

        btnOpcionA.setFont(new java.awt.Font("Roboto Medium", 0, 14)); // NOI18N
        btnOpcionA.setText("jButton1");
        btnOpcionA.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOpcionAActionPerformed(evt);
            }
        });
        getContentPane().add(btnOpcionA, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 130, 258, -1));

        btnOpcionB.setFont(new java.awt.Font("Roboto Medium", 0, 14)); // NOI18N
        btnOpcionB.setText("jButton2");
        btnOpcionB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOpcionBActionPerformed(evt);
            }
        });
        getContentPane().add(btnOpcionB, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 170, 258, -1));

        btnOpcionC.setFont(new java.awt.Font("Roboto Medium", 0, 14)); // NOI18N
        btnOpcionC.setText("jButton2");
        btnOpcionC.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOpcionCActionPerformed(evt);
            }
        });
        getContentPane().add(btnOpcionC, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 210, 258, -1));

        lblDescripcion.setFont(new java.awt.Font("Roboto Medium", 0, 18)); // NOI18N
        lblDescripcion.setText("jLabel2");
        getContentPane().add(lblDescripcion, new org.netbeans.lib.awtextra.AbsoluteConstraints(102, 81, -1, -1));

        btnCerrar.setFont(new java.awt.Font("Roboto Medium", 0, 12)); // NOI18N
        btnCerrar.setText("Cerrar Sesión");
        btnCerrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCerrarActionPerformed(evt);
            }
        });
        getContentPane().add(btnCerrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 260, -1, -1));

        lblBackGround.setIcon(new javax.swing.ImageIcon(getClass().getResource("/uam/pds/proyecto/images/Plantilla para historia de instagram fondo femenino rosado.png"))); // NOI18N
        getContentPane().add(lblBackGround, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 500, 350));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnOpcionAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOpcionAActionPerformed
        
            
             ConsultaFrm consulta = new ConsultaFrm();
            this.dispose();
            consulta.setVisible(true);
        
    }//GEN-LAST:event_btnOpcionAActionPerformed

    private void btnOpcionBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOpcionBActionPerformed
AltasProductosFrm altas = new AltasProductosFrm();
            this.dispose();
            altas.setVisible(true);
    }//GEN-LAST:event_btnOpcionBActionPerformed

    private void btnCerrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCerrarActionPerformed
      LoginFrm login = new LoginFrm();
            this.dispose();
            login.setVisible(true);
        

// TODO add your handling code here:
    }//GEN-LAST:event_btnCerrarActionPerformed

    private void btnOpcionCActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOpcionCActionPerformed
      Principal altas = new Principal();
            this.dispose();
            altas.setVisible(true);
    }//GEN-LAST:event_btnOpcionCActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(MenuFrm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MenuFrm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MenuFrm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MenuFrm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MenuFrm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCerrar;
    private javax.swing.JButton btnOpcionA;
    private javax.swing.JButton btnOpcionB;
    private javax.swing.JButton btnOpcionC;
    private javax.swing.JLabel lblBackGround;
    private javax.swing.JLabel lblBienvenido;
    private javax.swing.JLabel lblDescripcion;
    private javax.swing.JLabel lblNombre;
    // End of variables declaration//GEN-END:variables
}