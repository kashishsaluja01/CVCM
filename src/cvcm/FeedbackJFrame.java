/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cvcm;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
/**
 *
 * @author kashi
 */
public class FeedbackJFrame extends javax.swing.JFrame {
ConnectionClass cobj=new ConnectionClass();
PreparedStatement pst;
ResultSet rst;
long fid;
long cid[];
int index=0;
    /**
     * Creates new form FeedbackJFrame
     */
    public FeedbackJFrame() {
        initComponents();
        ConnectionClass cobj = new ConnectionClass();
       
        cid= new long[100];
        int index=0;
       
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTextField2 = new javax.swing.JTextField();
        citizenIdjLabel1 = new javax.swing.JLabel();
        DofjLabel2 = new javax.swing.JLabel();
        remarksjLabel3 = new javax.swing.JLabel();
        actiondetailsjLabel4 = new javax.swing.JLabel();
        dofjTextField1 = new javax.swing.JTextField();
        actiondetailsjTextField3 = new javax.swing.JTextField();
        savejButton1 = new javax.swing.JButton();
        searchjButton2 = new javax.swing.JButton();
        updatejButton3 = new javax.swing.JButton();
        resetjButton4 = new javax.swing.JButton();
        errorjLabel6 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        remarksjTextArea1 = new javax.swing.JTextArea();
        citizenid = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        citizenIdjLabel1.setText("Aadhar Number");

        DofjLabel2.setText("Date Of Feedback");

        remarksjLabel3.setText("Remarks");

        actiondetailsjLabel4.setText("Action Details");

        savejButton1.setText("Save");
        savejButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                savejButton1ActionPerformed(evt);
            }
        });

        searchjButton2.setText("Search");
        searchjButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchjButton2ActionPerformed(evt);
            }
        });

        updatejButton3.setText("Update");
        updatejButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                updatejButton3ActionPerformed(evt);
            }
        });

        resetjButton4.setText("Reset");
        resetjButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                resetjButton4ActionPerformed(evt);
            }
        });

        remarksjTextArea1.setColumns(20);
        remarksjTextArea1.setRows(5);
        jScrollPane1.setViewportView(remarksjTextArea1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(errorjLabel6)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(105, 105, 105)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(actiondetailsjLabel4)
                                    .addComponent(remarksjLabel3)
                                    .addComponent(DofjLabel2)
                                    .addComponent(citizenIdjLabel1)))
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(savejButton1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(searchjButton2)))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(updatejButton3)
                                .addGap(64, 64, 64)
                                .addComponent(resetjButton4))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(69, 69, 69)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(actiondetailsjTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(citizenid, javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(dofjTextField1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 111, Short.MAX_VALUE)))
                                .addGap(0, 27, Short.MAX_VALUE)))))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(citizenIdjLabel1)
                    .addComponent(citizenid, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(DofjLabel2)
                    .addComponent(dofjTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(remarksjLabel3)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(actiondetailsjTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(actiondetailsjLabel4))
                .addGap(58, 58, 58)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(savejButton1)
                    .addComponent(searchjButton2)
                    .addComponent(updatejButton3)
                    .addComponent(resetjButton4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(errorjLabel6)
                .addGap(23, 23, 23))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void savejButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_savejButton1ActionPerformed
        // TODO add your handling code here:
       if(dofjTextField1.getText().equals(""))
            errorjLabel6.setText("choose citizenID");
        else
            if(remarksjTextArea1.getText().equals(""))
            errorjLabel6.setText("Enter remarks");
        else
            if(actiondetailsjTextField3.getText().equals(""))
            errorjLabel6.setText("Enter action details");
        
        else
            {cobj.Connect();
        try{
              pst = cobj.con.prepareCall("{ call prcInsertFeedback(?,?,?,?) }");
              pst.setString(1,citizenid.getText() );
              pst.setString(2, dofjTextField1.getText() );
              pst.setString(3,remarksjTextArea1.getText() );
              pst.setString(4,actiondetailsjTextField3.getText() );
              
              if(pst.execute()==false)
                    if(pst.getUpdateCount()>0)
                    {
                    errorjLabel6.setText("Record Saved");
                    dofjTextField1.setText("");
                    remarksjTextArea1.setText("");
                    actiondetailsjTextField3.setText("");
                    
                    }
              
            }
        catch(Exception ex)
        {
            System.out.println("error"+ex);
        }
        cobj.DisConnect();}
    }//GEN-LAST:event_savejButton1ActionPerformed

    private void searchjButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchjButton2ActionPerformed
if(citizenid.getText().equals(""))
            errorjLabel6.setText("enter citizenID");
        
            
      else
{
        cobj.Connect();
        try
        {
            pst = cobj.con.prepareStatement("Select * from tbFeedback where CitizenID=?");
            pst.setString(1, citizenid.getText());
            rst = pst.executeQuery();
            if(rst.next())
            {
                         
            dofjTextField1.setText(rst.getString(2));
            remarksjTextArea1.setText(rst.getString(3));
            actiondetailsjTextField3.setText(rst.getString(4));
            }
             rst.close();
            }
        catch(Exception ex)
        {
        System.out.print("Error in searching"+ ex);
        }
       
        cobj.DisConnect();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_searchjButton2ActionPerformed

    private void updatejButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_updatejButton3ActionPerformed

 if(dofjTextField1.getText().equals(""))
            errorjLabel6.setText("Enter Date of Feedback");
        else
            if(actiondetailsjTextField3.getText().equals(""))
                errorjLabel6.setText("enter action details");
        else
                if(remarksjTextArea1.getText().equals(""))
                    errorjLabel6.setText("enter remarks");
        else
                {
                    cobj.Connect();
                    try
                    {
                      pst=cobj.con.prepareCall("{call prcUpdateFeedback(?,?,?,?,?)}");
                      pst.setLong(1, fid);
                     pst.setString(2,citizenid.getText());
                      pst.setString(3, dofjTextField1.getText());
                      pst.setString(4,actiondetailsjTextField3.getText() );
                      pst.setString(5, remarksjTextArea1.getText());
                      
                      if(pst.execute()==false)
                          if(pst.getUpdateCount()>0)
                          {
                              errorjLabel6.setText("record update");
                              dofjTextField1.setText("");
                              actiondetailsjTextField3.setText("");
                              remarksjTextArea1.setText("");
                              
                              
                          }
                    }
                    catch(Exception ex)
                    {
                        System.out.println("error in update"+ex);
               }
                    cobj.DisConnect();
                }        // TODO add your handling code here:
    }//GEN-LAST:event_updatejButton3ActionPerformed

    private void resetjButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_resetjButton4ActionPerformed
         errorjLabel6.setText("");
        dofjTextField1.setText("");
        actiondetailsjTextField3.setText("");
        remarksjTextArea1.setText("");
               // TODO add your handling code here:
    }//GEN-LAST:event_resetjButton4ActionPerformed

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
            java.util.logging.Logger.getLogger(FeedbackJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FeedbackJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FeedbackJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FeedbackJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FeedbackJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel DofjLabel2;
    private javax.swing.JLabel actiondetailsjLabel4;
    private javax.swing.JTextField actiondetailsjTextField3;
    private javax.swing.JLabel citizenIdjLabel1;
    private javax.swing.JTextField citizenid;
    private javax.swing.JTextField dofjTextField1;
    private javax.swing.JLabel errorjLabel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JLabel remarksjLabel3;
    private javax.swing.JTextArea remarksjTextArea1;
    private javax.swing.JButton resetjButton4;
    private javax.swing.JButton savejButton1;
    private javax.swing.JButton searchjButton2;
    private javax.swing.JButton updatejButton3;
    // End of variables declaration//GEN-END:variables
}
