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
    [Activity(Label = "SimpleInterest")]
    public class SimpleInterest : Activity
    {
        TextView SI_Text;
        EditText SI_Principal, SI_Rate, SI_Time;
        Button SI_Button;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.SimpleInterest);

            SI_Text = FindViewById<TextView>(Resource.Id.textView2);
            SI_Principal = FindViewById<EditText>(Resource.Id.editText1);
            SI_Rate = FindViewById<EditText>(Resource.Id.editText2);
            SI_Time = FindViewById<EditText>(Resource.Id.editText3);
            SI_Button = FindViewById<Button>(Resource.Id.SIBtn);

            SI_Button.Click += SI_Button_Click;

        }

        private void SI_Button_Click(object sender, EventArgs e)
        {
            float interest = float.Parse(SI_Principal.Text);    
            float rate = float.Parse(SI_Rate.Text);
            float time = float.Parse(SI_Time.Text);
            Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
            float answer = cb.SimpleInterest(interest, rate, time);
            SI_Text.Text = answer.ToString();
            ////SI_Text.Text = "This works fine as well!";
        }
    }
}