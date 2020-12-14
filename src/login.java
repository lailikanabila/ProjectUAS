
import com.sun.glass.events.KeyEvent;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.*;
import java.util.logging.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class login extends javax.swing.JFrame {
    
    private static Point point = new Point();

    /**
     * Creates new form login
     */
    public login() {
        super("Tugas Akhir");
        setSize(642, 443);
        setResizable(false);
        setLocationRelativeTo(null);
        this.setUndecorated(true);
        
        this.addMouseListener(new MouseAdapter() {
            public void mousePressed(MouseEvent e) {
                point.x = e.getX();
                point.y = e.getY();
            }
        });
        this.addMouseMotionListener(new MouseMotionAdapter() {
            public void mouseDragged(MouseEvent e) {
                Point p = getLocation();
                setLocation(p.x + e.getX() - point.x, p.y + e.getY() - point.y);
            }
        });
        
        initComponents();
        setDefaultCloseOperation(DO_NOTHING_ON_CLOSE);
        
        thisday();
        timenow();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        body = new javax.swing.JPanel();
        header = new javax.swing.JPanel();
        title = new javax.swing.JLabel();
        close_btn = new javax.swing.JLabel();
        thisday = new javax.swing.JLabel();
        timenow = new javax.swing.JLabel();
        label1 = new javax.swing.JLabel();
        label2 = new javax.swing.JLabel();
        username = new placeholder.username();
        password = new placeholder.password();
        button = new javax.swing.JPanel();
        submit = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        body.setBackground(new java.awt.Color(255, 255, 255));
        body.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        body.setForeground(new java.awt.Color(255, 255, 255));

        header.setBackground(new java.awt.Color(204, 0, 0));

        title.setFont(new java.awt.Font("Back to Black Demo", 0, 24)); // NOI18N
        title.setForeground(new java.awt.Color(255, 255, 255));
        title.setText(" tugasakhir");
        title.setToolTipText("TUGAS AKHIR");

        close_btn.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        close_btn.setForeground(new java.awt.Color(255, 255, 255));
        close_btn.setText("×");
        close_btn.setToolTipText("Keluar?");
        close_btn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                close_btnMouseClicked(evt);
            }
        });
        close_btn.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                close_btnKeyPressed(evt);
            }
        });

        thisday.setForeground(new java.awt.Color(255, 255, 255));
        thisday.setText("Hari, Tanggal Bulan Tahun");

        timenow.setForeground(new java.awt.Color(255, 255, 255));
        timenow.setText("Jam:Menit:Detik");

        javax.swing.GroupLayout headerLayout = new javax.swing.GroupLayout(header);
        header.setLayout(headerLayout);
        headerLayout.setHorizontalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(title, javax.swing.GroupLayout.PREFERRED_SIZE, 123, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(132, 132, 132)
                .addComponent(thisday)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(timenow)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 139, Short.MAX_VALUE)
                .addComponent(close_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        headerLayout.setVerticalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                .addComponent(title, javax.swing.GroupLayout.DEFAULT_SIZE, 47, Short.MAX_VALUE)
                .addComponent(close_btn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(thisday, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(timenow, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        label1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        label1.setText("Masuk ke");

        label2.setFont(new java.awt.Font("Tahoma", 1, 28)); // NOI18N
        label2.setForeground(new java.awt.Color(204, 0, 0));
        label2.setText("TUKHIR");

        username.setToolTipText("masukkan nama pengguna kamu");
        username.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                usernameKeyPressed(evt);
            }
        });

        password.setToolTipText("masukkan kata sandi kamu");
        password.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                passwordKeyPressed(evt);
            }
        });

        button.setBackground(new java.awt.Color(204, 0, 0));

        submit.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        submit.setForeground(new java.awt.Color(255, 255, 255));
        submit.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        submit.setText("MASUK");
        submit.setToolTipText("Masuk Ke TUKHIR");
        submit.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                submitMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout buttonLayout = new javax.swing.GroupLayout(button);
        button.setLayout(buttonLayout);
        buttonLayout.setHorizontalGroup(
            buttonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(submit, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 100, Short.MAX_VALUE)
        );
        buttonLayout.setVerticalGroup(
            buttonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(submit, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 36, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout bodyLayout = new javax.swing.GroupLayout(body);
        body.setLayout(bodyLayout);
        bodyLayout.setHorizontalGroup(
            bodyLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(header, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(bodyLayout.createSequentialGroup()
                .addGap(202, 202, 202)
                .addGroup(bodyLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(bodyLayout.createSequentialGroup()
                        .addGap(61, 61, 61)
                        .addGroup(bodyLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(label1)
                            .addComponent(label2)))
                    .addGroup(bodyLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(password, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 231, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(username, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 231, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(bodyLayout.createSequentialGroup()
                        .addGap(64, 64, 64)
                        .addComponent(button, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        bodyLayout.setVerticalGroup(
            bodyLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(bodyLayout.createSequentialGroup()
                .addComponent(header, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(98, 98, 98)
                .addGroup(bodyLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label1)
                    .addComponent(label2, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(username, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(password, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(button, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 101, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(body, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(body, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void close_btnKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_close_btnKeyPressed
        // TODO add your handling code here:
        int x = JOptionPane.showConfirmDialog(null, "Anda yakin ingin keluar dari program?", "Keluar", JOptionPane.YES_NO_OPTION, JOptionPane.ERROR_MESSAGE);
        if (x == JOptionPane.YES_OPTION) {
            System.exit(0);
            dispose();
        }
    }//GEN-LAST:event_close_btnKeyPressed

    private void close_btnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_close_btnMouseClicked
        // TODO add your handling code here:
        int x = JOptionPane.showConfirmDialog(null, "Anda yakin ingin keluar dari program?", "Keluar", JOptionPane.YES_NO_OPTION, JOptionPane.ERROR_MESSAGE);
        if (x == JOptionPane.YES_OPTION) {
            System.exit(0);
            dispose();
        }
    }//GEN-LAST:event_close_btnMouseClicked

    private void passwordKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_passwordKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            submit();
        }
    }//GEN-LAST:event_passwordKeyPressed

    private void usernameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_usernameKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            submit();
        }
    }//GEN-LAST:event_usernameKeyPressed

    private void submitMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_submitMouseClicked
        // TODO add your handling code here:
        submit();
    }//GEN-LAST:event_submitMouseClicked

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
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new login().setVisible(true);
            }
        });
    }
    
    private void submit() {
        if (username.getText().equals("") || password.getText().equals("")) {
            JOptionPane.showMessageDialog(null, "Nama pengguna dan Kata sandi tidak boleh kosong!", "Peringatan", JOptionPane.WARNING_MESSAGE);
        } else {
            try {
                String sql = "SELECT * FROM admin WHERE username = '"+username.getText()+"' AND password = '"+password.getText()+"'";
                Connection con = new database.connection().configDB();
                java.sql.Statement stat = con.createStatement();
                java.sql.ResultSet rs = stat.executeQuery(sql);

                if (rs.next()) {
                    if (username.getText().equals(rs.getString("username")) && password.getText().equals(rs.getString("password"))) {
                        home n = new home();
                        n.setVisible(true);
                        this.setVisible(false);
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "Nama pengguna atau Kata sandi yang Anda masukkan salah.", "Kesalahan", JOptionPane.ERROR_MESSAGE);
                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "gagal");
            }
        }
    }
    
    private void thisday() {
        java.util.Date sekarang = new java.util.Date();
        java.text.SimpleDateFormat kal = new java.text.SimpleDateFormat("EEEE, dd MMMMM yyyy") ;
        thisday.setText(""+kal.format(sekarang));
    }
    
    private void timenow() {
    // ActionListener untuk Keperluan Timer
        ActionListener taskPerformer = new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                String nol_jam = "";
                String nol_menit = "";
                String nol_detik = "";
                // Membuat Date
                java.util.Date dt = new java.util.Date();
                // Mengambil nilaj JAM, MENIT, dan DETIK Sekarang
                int nilai_jam = dt.getHours();
                int nilai_menit = dt.getMinutes();
                int nilai_detik = dt.getSeconds();
                // Jika nilai JAM lebih kecil dari 10 (hanya 1 digit)
                if (nilai_jam <= 9) {
                    // Tambahkan "0" didepannya
                    nol_jam = "0";
                }
                // Jika nilai MENIT lebih kecil dari 10 (hanya 1 digit)
                if (nilai_menit <= 9) {
                    // Tambahkan "0" didepannya
                    nol_menit = "0";
                }
                // Jika nilai DETIK lebih kecil dari 10 (hanya 1 digit)
                if (nilai_detik <= 9) {
                    // Tambahkan "0" didepannya
                    nol_detik = "0";
                }
                // Membuat String JAM, MENIT, DETIK
                String jam = nol_jam + Integer.toString(nilai_jam);
                String menit = nol_menit + Integer.toString(nilai_menit);
                String detik = nol_detik + Integer.toString(nilai_detik);
                // Menampilkan pada Layar
                timenow.setText(jam + ":" + menit + ":" + detik);
            }
        };
        // Timer
        new javax.swing.Timer(1000, taskPerformer).start();
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel body;
    private javax.swing.JPanel button;
    private javax.swing.JLabel close_btn;
    private javax.swing.JPanel header;
    private javax.swing.JLabel label1;
    private javax.swing.JLabel label2;
    private javax.swing.JTextField password;
    private javax.swing.JLabel submit;
    private javax.swing.JLabel thisday;
    private javax.swing.JLabel timenow;
    private javax.swing.JLabel title;
    private javax.swing.JTextField username;
    // End of variables declaration//GEN-END:variables
}
