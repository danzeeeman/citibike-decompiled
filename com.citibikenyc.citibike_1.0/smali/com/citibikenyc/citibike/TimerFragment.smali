.class public Lcom/citibikenyc/citibike/TimerFragment;
.super Landroid/support/v4/app/Fragment;
.source "TimerFragment.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TimerFragment"


# instance fields
.field alarmAmountView:Landroid/widget/TextView;

.field alarmSetDialog:Landroid/app/AlertDialog;

.field private defaultPickerMinutes:I

.field dialogMessage:Landroid/widget/TextView;

.field largeTimerDisplay:Landroid/widget/TextView;

.field mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

.field resetButton:Landroid/view/View;

.field startButton:Landroid/view/View;

.field state:Landroid/os/Bundle;

.field stopButton:Landroid/view/View;

.field private timeChanged:Z

.field timePicker:Landroid/widget/TimePicker;

.field private timePickerHours:I

.field private timePickerMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    .line 37
    iput-object v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->state:Landroid/os/Bundle;

    .line 39
    iput-boolean v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z

    .line 40
    iput v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    .line 41
    iput v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    .line 42
    iput v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->defaultPickerMinutes:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/TimerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    return v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/TimerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    return v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/TimerFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    return-void
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/TimerFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    return-void
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/TimerFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z

    return-void
.end method

.method private getDefaultTime()I
    .locals 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/TimerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "SETTINGS_PREFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 276
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "MEMBERSHIP_IS_7DAY"

    sget-boolean v3, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_7DAY:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 278
    .local v0, is7Day:Z
    if-eqz v0, :cond_0

    .line 279
    const/16 v2, 0x19

    .line 281
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x28

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    const v3, 0x7f03004b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0500bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->startButton:Landroid/view/View;

    .line 48
    const v3, 0x7f0500bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->stopButton:Landroid/view/View;

    .line 49
    const v3, 0x7f0500bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->resetButton:Landroid/view/View;

    .line 50
    const v3, 0x7f0500ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmAmountView:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f0500b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->largeTimerDisplay:Landroid/widget/TextView;

    .line 52
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->startButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/TimerFragment;->setTimerStartAction(Landroid/view/View;)V

    .line 53
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->stopButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/TimerFragment;->setTimerStopAction(Landroid/view/View;)V

    .line 54
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->resetButton:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/TimerFragment;->setTimerResetAction(Landroid/view/View;)V

    .line 57
    if-eqz p3, :cond_1

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/citibikenyc/citibike/TimerFragment;->state:Landroid/os/Bundle;

    .line 58
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->state:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->state:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/TimerFragment;->restoreState(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    :goto_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmAmountView:Landroid/widget/TextView;

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v3, p1}, Lcom/citibikenyc/citibike/TimerFragment;->setTimerAlarmSettingAction(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 67
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmSetDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 68
    const v3, 0x7f03004c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, dialoglayout:Landroid/view/View;
    const v3, 0x7f0500c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    .line 70
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 71
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    iget v4, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 72
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    iget v4, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 75
    const v3, 0x7f0500bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->dialogMessage:Landroid/widget/TextView;

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/TimerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0123

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 82
    const v4, 0x7f0a012b

    new-instance v5, Lcom/citibikenyc/citibike/TimerFragment$1;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/TimerFragment$1;-><init>(Lcom/citibikenyc/citibike/TimerFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 128
    const/high16 v4, 0x104

    new-instance v5, Lcom/citibikenyc/citibike/TimerFragment$2;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/TimerFragment$2;-><init>(Lcom/citibikenyc/citibike/TimerFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmSetDialog:Landroid/app/AlertDialog;

    .line 138
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialoglayout:Landroid/view/View;
    :cond_0
    return-object v2

    .line 57
    .restart local p3
    :cond_1
    iget-object p3, p0, Lcom/citibikenyc/citibike/TimerFragment;->state:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 61
    .end local p3
    :cond_2
    iget v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->defaultPickerMinutes:I

    iput v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    .line 62
    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmAmountView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    mul-int/lit8 v5, v5, 0x3c

    iget v6, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " Mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    invoke-interface {v0, p0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->removeUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/TimerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 199
    const-string v0, "startButtonVisibility"

    iget-object v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->startButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v0, "stopButtonVisibility"

    iget-object v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->stopButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "resetButtonVisibility"

    iget-object v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->resetButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "timePickerHours"

    iget v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v0, "timePickerMinutes"

    iget v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v0, "timeChanged"

    iget-boolean v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    iput-object p1, p0, Lcom/citibikenyc/citibike/TimerFragment;->state:Landroid/os/Bundle;

    .line 207
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 164
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/TimerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/MainActivity;

    .line 167
    .local v0, act:Lcom/citibikenyc/citibike/MainActivity;
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->getBikeTimerListener()Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    .line 170
    .end local v0           #act:Lcom/citibikenyc/citibike/MainActivity;
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    iget-object v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->largeTimerDisplay:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->setTextView(Landroid/widget/TextView;)V

    .line 171
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    invoke-interface {v2, p0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->addUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V

    .line 173
    invoke-direct {p0}, Lcom/citibikenyc/citibike/TimerFragment;->getDefaultTime()I

    move-result v1

    .line 175
    .local v1, tempTime:I
    iget v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->defaultPickerMinutes:I

    if-eq v1, v2, :cond_1

    .line 176
    iput v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->defaultPickerMinutes:I

    .line 178
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z

    if-nez v2, :cond_1

    .line 179
    iget v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->defaultPickerMinutes:I

    iput v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    .line 181
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmAmountView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Mins"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    iget v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 185
    iget-object v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePicker:Landroid/widget/TimePicker;

    iget v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 189
    :cond_1
    return-void
.end method

.method public onTimerDone()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onTimerMaxed()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->stopButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->resetButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public restoreState(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 148
    const-string v0, "TimerFragment"

    const-string v1, "DEBUG: restoreState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->startButton:Landroid/view/View;

    const-string v1, "startButtonVisibility"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->stopButton:Landroid/view/View;

    const-string v1, "stopButtonVisibility"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->resetButton:Landroid/view/View;

    const-string v1, "resetButtonVisibility"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const-string v0, "timePickerHours"

    iget v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    .line 154
    const-string v0, "timePickerMinutes"

    iget v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    .line 155
    const-string v0, "timeChanged"

    iget-boolean v1, p0, Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->timeChanged:Z

    .line 157
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment;->alarmAmountView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerHours:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/citibikenyc/citibike/TimerFragment;->timePickerMinutes:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Mins"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public setTimerAlarmSettingAction(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter "v"
    .parameter "group"
    .parameter "inflater"

    .prologue
    .line 256
    new-instance v0, Lcom/citibikenyc/citibike/TimerFragment$6;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/TimerFragment$6;-><init>(Lcom/citibikenyc/citibike/TimerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method public setTimerResetAction(Landroid/view/View;)V
    .locals 1
    .parameter "resetView"

    .prologue
    .line 245
    new-instance v0, Lcom/citibikenyc/citibike/TimerFragment$5;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/TimerFragment$5;-><init>(Lcom/citibikenyc/citibike/TimerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-void
.end method

.method public setTimerStartAction(Landroid/view/View;)V
    .locals 1
    .parameter "startView"

    .prologue
    .line 221
    new-instance v0, Lcom/citibikenyc/citibike/TimerFragment$3;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/TimerFragment$3;-><init>(Lcom/citibikenyc/citibike/TimerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method public setTimerStopAction(Landroid/view/View;)V
    .locals 1
    .parameter "stopView"

    .prologue
    .line 233
    new-instance v0, Lcom/citibikenyc/citibike/TimerFragment$4;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/TimerFragment$4;-><init>(Lcom/citibikenyc/citibike/TimerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method
