.class Lcom/citibikenyc/citibike/TimerFragment$1;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/TimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/TimerFragment;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/TimerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 84
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v4, v4, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 85
    .local v2, hours:I
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v4, v4, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    .local v3, minutes:I
    const/16 v4, 0xa

    if-lt v2, v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v4, v4, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    iget-object v5, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    #getter for: Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I
    invoke-static {v5}, Lcom/citibikenyc/citibike/TimerFragment;->access$0(Lcom/citibikenyc/citibike/TimerFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 90
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v4, v4, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    iget-object v5, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    #getter for: Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I
    invoke-static {v5}, Lcom/citibikenyc/citibike/TimerFragment;->access$1(Lcom/citibikenyc/citibike/TimerFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 93
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/TimerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a0136

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 100
    const v4, 0x7f0a0137

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 102
    const v5, 0x104000a

    new-instance v6, Lcom/citibikenyc/citibike/TimerFragment$1$1;

    invoke-direct {v6, p0}, Lcom/citibikenyc/citibike/TimerFragment$1$1;-><init>(Lcom/citibikenyc/citibike/TimerFragment$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "Timer"

    const-string v6, "Start"

    const-string v7, "AlarmTimeAdjusted"

    mul-int/lit8 v8, v2, 0x3c

    add-int/2addr v8, v3

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    #setter for: Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I
    invoke-static {v4, v2}, Lcom/citibikenyc/citibike/TimerFragment;->access$2(Lcom/citibikenyc/citibike/TimerFragment;I)V

    .line 118
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    #setter for: Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I
    invoke-static {v4, v3}, Lcom/citibikenyc/citibike/TimerFragment;->access$3(Lcom/citibikenyc/citibike/TimerFragment;I)V

    .line 119
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    const/4 v5, 0x1

    #setter for: Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z
    invoke-static {v4, v5}, Lcom/citibikenyc/citibike/TimerFragment;->access$4(Lcom/citibikenyc/citibike/TimerFragment;Z)V

    .line 121
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v4, v4, Lcom/citibikenyc/citibike/TimerFragment;->alarmAmountView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Mins"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment$1;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v4, v4, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v5, v3

    invoke-interface {v4, v5}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->setTimerTime(I)V

    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
