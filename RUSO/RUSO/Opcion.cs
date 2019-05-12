using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RUSO
{
	public partial class Opcion : Form
	{
		public Opcion()
		{
			InitializeComponent();
		}

		private void tableLayoutPanel3_Paint(object sender, PaintEventArgs e)
		{

		}

		private void Opcion_FormClosed(object sender, FormClosedEventArgs e)
		{
			Application.Exit();
		}

		private void label2_Click(object sender, EventArgs e)
		{

		}


		private void button5_Click(object sender, EventArgs e)
		{
			this.Hide();
			MainMenu nuevo = new MainMenu("","");
			nuevo.Show();
		}

		private void button6_Click(object sender, EventArgs e)
		{
			this.Hide();
			LogIn nuevo = new LogIn();
			nuevo.Show();
		}

		private void timer1_Tick(object sender, EventArgs e)
		{
			label28.Text = DateTime.Now.ToLongTimeString();
		}

		private void label2_Click_1(object sender, EventArgs e)
		{

		}
	}
}
