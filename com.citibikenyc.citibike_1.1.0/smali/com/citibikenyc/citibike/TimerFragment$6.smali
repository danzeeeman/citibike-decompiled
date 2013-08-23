.class Lcom/citibikenyc/citibike/TimerFragment$6;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/TimerFragment;->setTimerAlarmSettingAction(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
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
    iput-object p1, p0, Lcom/citibikenyc/citibike/TimerFragment$6;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 256
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment$6;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/TimerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "SETTINGS_PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "MEMBERSHIP_IS_7DAY"

    sget-boolean v3, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_7DAY:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 259
    .local v0, is7Day:Z
    if-nez v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment$6;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v2, v2, Lcom/citibikenyc/citibike/TimerFragment;->dialogMessage:Landroid/widget/TextView;

    const v3, 0x7f0a012f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment$6;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v2, v2, Lcom/citibikenyc/citibike/TimerFragment;->alarmSetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 264
    return-void
.end method
