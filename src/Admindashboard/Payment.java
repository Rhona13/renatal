/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admindashboard;

import Config.DBConnector;
import java.awt.Color;
import java.awt.print.PrinterException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.MessageFormat;
import javax.swing.JTable;
import javax.swing.RowFilter;
import javax.swing.plaf.basic.BasicInternalFrameUI;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author scc-college
 */
public class Payment extends javax.swing.JInternalFrame {

    /**
     * Creates new form Payment
     */
    public Payment() {
        initComponents();
        this.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        BasicInternalFrameUI bi = (BasicInternalFrameUI) this.getUI();
        bi.setNorthPane(null);
        displayData();
    }
     public void displayData() {
        try {
            DBConnector DBConnector = new DBConnector();
            ResultSet rs = DBConnector.getData("SELECT occupant.o_firstname, occupant.o_lastname,occupant.o_members, "
                    + "houses.h_number,houses.h_electricity, houses.h_water, houses.h_maintencance, houses.h_security, houses.h_price,"
                    + "houses.h_total, houses.h_date FROM occupant INNER JOIN houses on "
                    + "occupant.o_id = occupant.o_id");
            h_table.setModel(DbUtils.resultSetToTableModel(rs));
            rs.close();  
        } catch (SQLException ex) {
            System.out.println("Errors: " + ex.getMessage());

        }

    }

    Color navcolor = new Color(255, 204, 255);
    Color hovercolor = new Color(255, 0, 102);

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        h_table = new javax.swing.JTable();
        p_add2 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        search = new javax.swing.JTextField();
        p_add3 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();

        jPanel2.setBackground(new java.awt.Color(255, 204, 204));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("HOUSE PAYMENTS");
        jPanel2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 20, 370, 50));

        h_table.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        h_table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        h_table.setGridColor(new java.awt.Color(204, 0, 102));
        h_table.setRowHeight(25);
        h_table.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                h_tableMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(h_table);

        jPanel2.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 210, 840, 380));

        p_add2.setBackground(new java.awt.Color(255, 204, 255));
        p_add2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                p_add2MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                p_add2MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                p_add2MouseExited(evt);
            }
        });
        p_add2.setLayout(null);

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("PRINT");
        jLabel8.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel8MouseClicked(evt);
            }
        });
        p_add2.add(jLabel8);
        jLabel8.setBounds(0, 0, 150, 50);

        jPanel2.add(p_add2, new org.netbeans.lib.awtextra.AbsoluteConstraints(690, 150, 150, 50));

        search.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        search.setText("SEARCH");
        search.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                searchMouseClicked(evt);
            }
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                searchMouseReleased(evt);
            }
        });
        search.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchActionPerformed(evt);
            }
        });
        search.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                searchKeyReleased(evt);
            }
        });
        jPanel2.add(search, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 90, 610, 30));

        p_add3.setBackground(new java.awt.Color(255, 204, 255));
        p_add3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                p_add3MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                p_add3MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                p_add3MouseExited(evt);
            }
        });
        p_add3.setLayout(null);

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("BACK");
        jLabel9.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel9MouseClicked(evt);
            }
        });
        p_add3.add(jLabel9);
        jLabel9.setBounds(0, 0, 150, 50);

        jPanel2.add(p_add3, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 150, 150, 50));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 880, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 620, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void h_tableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_h_tableMouseClicked

    }//GEN-LAST:event_h_tableMouseClicked

    private void jLabel8MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel8MouseClicked
        MessageFormat header = new MessageFormat("Transaction Reports");
        MessageFormat footer = new MessageFormat("Page{0,number,integer}");
        try {
            h_table.print(JTable.PrintMode.FIT_WIDTH, header, footer);
        } catch (PrinterException er) {
            System.out.println("" + er.getMessage());
        }
    }//GEN-LAST:event_jLabel8MouseClicked

    private void p_add2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_add2MouseClicked

    }//GEN-LAST:event_p_add2MouseClicked

    private void p_add2MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_add2MouseEntered

    }//GEN-LAST:event_p_add2MouseEntered

    private void p_add2MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_add2MouseExited

    }//GEN-LAST:event_p_add2MouseExited

    private void searchMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_searchMouseClicked
        search.setText("");
    }//GEN-LAST:event_searchMouseClicked

    private void searchMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_searchMouseReleased

    }//GEN-LAST:event_searchMouseReleased

    private void searchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchActionPerformed

    }//GEN-LAST:event_searchActionPerformed

    private void searchKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchKeyReleased
        DefaultTableModel tbl = (DefaultTableModel) h_table.getModel();
        TableRowSorter<DefaultTableModel> obj = new TableRowSorter<>(tbl);
        h_table.setRowSorter(obj);
        obj.setRowFilter(RowFilter.regexFilter(search.getText()));
    }//GEN-LAST:event_searchKeyReleased

    private void jLabel9MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel9MouseClicked
        Admin a = new Admin();
        a.setVisible(true);
        dispose();
    }//GEN-LAST:event_jLabel9MouseClicked

    private void p_add3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_add3MouseClicked

    }//GEN-LAST:event_p_add3MouseClicked

    private void p_add3MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_add3MouseEntered

    }//GEN-LAST:event_p_add3MouseEntered

    private void p_add3MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_add3MouseExited

    }//GEN-LAST:event_p_add3MouseExited


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable h_table;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JPanel p_add2;
    private javax.swing.JPanel p_add3;
    private javax.swing.JTextField search;
    // End of variables declaration//GEN-END:variables
}
