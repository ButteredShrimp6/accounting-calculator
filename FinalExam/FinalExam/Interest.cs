using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FinalExam
{
    [Activity(Label = "Activity1")]
    public class Interest : Activity
    {
        TextView I_Text;
        EditText I_Principal, I_Rate, I_Time;
        Button I_Button;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Interest);
            // Create your application here
            I_Text = FindViewById<TextView>(Resource.Id.textView2);
            I_Principal = FindViewById<EditText>(Resource.Id.editText1);
            I_Rate = FindViewById<EditText>(Resource.Id.editText2);
            I_Time = FindViewById<EditText>(Resource.Id.editText3);
            I_Button = FindViewById<Button>(Resource.Id.InterestBtn1);

            I_Button.Click += this.I_Button_Click;
        }

        public void I_Button_Click(object sender, System.EventArgs e)
        {
            float prin = float.Parse(I_Principal.Text);
            float rate = float.Parse(I_Rate.Text);
            float time = float.Parse(I_Time.Text);
            Computation.AccountancyComputations cb = new Computation.AccountancyComputations();            
            string answer = cb.calculateInterest(prin, rate, time);
            I_Text.Text = answer;
            //I_Text.Text = "It Works!";
        }
    }
}