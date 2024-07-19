using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Org.W3c.Dom;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FinalExam
{
    [Activity(Label = "InterestRate")]
    public class InterestRate : Activity
    {
        TextView IR_Text;
        EditText IR_sInterest, IR_Principal, IR_Time;
        Button IR_Button;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.InterestRate);
            IR_Text = FindViewById<TextView>(Resource.Id.textView2);
            IR_sInterest = FindViewById<EditText>(Resource.Id.editText1);
            IR_Principal = FindViewById<EditText>(Resource.Id.editText2);
            IR_Time = FindViewById<EditText>(Resource.Id.editText3);
            IR_Button = FindViewById<Button>(Resource.Id.IRbtn);

            IR_Button.Click += this.IR_Button_Click;
        }
        private void IR_Button_Click(object sender, EventArgs e)
        {
            float simpInter = float.Parse(IR_sInterest.Text);
            float prin = float.Parse(IR_Principal.Text);
            float time = float.Parse(IR_Time.Text);
            Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
            float answer = cb.calculateInterestRate(simpInter, prin, time);
            IR_Text.Text = answer+"%".ToString();
            //IR_Text.Text = "This works too!";
        }
    }
}