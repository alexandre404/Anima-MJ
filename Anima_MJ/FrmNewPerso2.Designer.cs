namespace Anima_MJ
{
    partial class FrmNewPerso2
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmNewPerso2));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtAge = new System.Windows.Forms.TextBox();
            this.txtPoid = new System.Windows.Forms.TextBox();
            this.txtTaille = new System.Windows.Forms.TextBox();
            this.txtApparence = new System.Windows.Forms.TextBox();
            this.BtnOK = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.cbSexe = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Location = new System.Drawing.Point(31, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(26, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Age";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Location = new System.Drawing.Point(31, 91);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(33, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Poids";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Location = new System.Drawing.Point(31, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Taille";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Location = new System.Drawing.Point(31, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Apparence";
            // 
            // txtAge
            // 
            this.txtAge.Location = new System.Drawing.Point(108, 62);
            this.txtAge.Name = "txtAge";
            this.txtAge.Size = new System.Drawing.Size(100, 20);
            this.txtAge.TabIndex = 5;
            // 
            // txtPoid
            // 
            this.txtPoid.Location = new System.Drawing.Point(108, 88);
            this.txtPoid.Name = "txtPoid";
            this.txtPoid.Size = new System.Drawing.Size(100, 20);
            this.txtPoid.TabIndex = 6;
            // 
            // txtTaille
            // 
            this.txtTaille.Location = new System.Drawing.Point(108, 114);
            this.txtTaille.Name = "txtTaille";
            this.txtTaille.Size = new System.Drawing.Size(100, 20);
            this.txtTaille.TabIndex = 7;
            // 
            // txtApparence
            // 
            this.txtApparence.Location = new System.Drawing.Point(108, 140);
            this.txtApparence.Name = "txtApparence";
            this.txtApparence.Size = new System.Drawing.Size(100, 20);
            this.txtApparence.TabIndex = 8;
            // 
            // BtnOK
            // 
            this.BtnOK.BackColor = System.Drawing.Color.White;
            this.BtnOK.Location = new System.Drawing.Point(133, 196);
            this.BtnOK.Name = "BtnOK";
            this.BtnOK.Size = new System.Drawing.Size(75, 23);
            this.BtnOK.TabIndex = 9;
            this.BtnOK.Text = "Valider";
            this.BtnOK.UseVisualStyleBackColor = false;
            this.BtnOK.Click += new System.EventHandler(this.BtnOK_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Location = new System.Drawing.Point(31, 39);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(31, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Sexe";
            // 
            // cbSexe
            // 
            this.cbSexe.FormattingEnabled = true;
            this.cbSexe.Items.AddRange(new object[] {
            "M",
            "F"});
            this.cbSexe.Location = new System.Drawing.Point(108, 35);
            this.cbSexe.Name = "cbSexe";
            this.cbSexe.Size = new System.Drawing.Size(100, 21);
            this.cbSexe.TabIndex = 11;
            // 
            // FrmNewPerso2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Anima_MJ.Properties.Resources.fen3;
            this.ClientSize = new System.Drawing.Size(414, 378);
            this.Controls.Add(this.cbSexe);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.BtnOK);
            this.Controls.Add(this.txtApparence);
            this.Controls.Add(this.txtTaille);
            this.Controls.Add(this.txtPoid);
            this.Controls.Add(this.txtAge);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmNewPerso2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Nouveau Personnage";
            this.Load += new System.EventHandler(this.FrmNewPerso2_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtAge;
        private System.Windows.Forms.TextBox txtPoid;
        private System.Windows.Forms.TextBox txtTaille;
        private System.Windows.Forms.TextBox txtApparence;
        private System.Windows.Forms.Button BtnOK;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cbSexe;
    }
}