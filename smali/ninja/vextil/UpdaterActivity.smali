.class public Lninja/vextil/UpdaterActivity;
.super Landroid/app/Activity;
.source "UpdaterActivity.java"


# instance fields
.field private buttonContainer:Landroid/widget/RelativeLayout;

.field private buttonRight:Landroid/widget/Button;

.field private iconDone:Landroid/widget/ImageView;

.field private iconDownload:Landroid/widget/ImageView;

.field private iconLogo:Landroid/widget/ImageView;

.field private iconRefresh:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field public subVersion:Ljava/lang/String;

.field private textBottom:Landroid/widget/TextView;

.field private textTop:Landroid/widget/TextView;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$100(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$200(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$300(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$400(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->textTop:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$500(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->textBottom:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->lambda$onCreate$0()V

    return-void
.end method

.method static synthetic access$lambda$1(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->setCheckingForUpdate()V

    return-void
.end method

.method static synthetic access$lambda$10(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->lambda$null$2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->lambda$setCheckingForUpdate$1()V

    return-void
.end method

.method static synthetic access$lambda$3(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->runNewCheckForUpdateTask()V

    return-void
.end method

.method static synthetic access$lambda$4(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->lambda$setDownloadingUpdate$3()V

    return-void
.end method

.method static synthetic access$lambda$5(Lninja/vextil/UpdaterActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lninja/vextil/UpdaterActivity;->lambda$setUpdateDownloaded$4(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lninja/vextil/UpdaterActivity;Landroid/view/View;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->lambda$setNoNewUpdate$5(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lninja/vextil/UpdaterActivity;->onCheckForUpdateFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->lambda$setVisibleIcon$6()V

    return-void
.end method

.method static synthetic access$lambda$9(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setUpdateDownloaded(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$null$2(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 64
    sget-object v1, Lcom/daimajia/androidanimations/library/Techniques;->SlideInUp:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v1}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v1

    .line 65
    return-void
.end method

.method private synthetic lambda$setCheckingForUpdate$1()V
    .locals 12

    .prologue
    .line 96
    move-object v1, p0

    .local v1, "this":Lninja/vextil/UpdaterActivity;
    new-instance v3, Landroid/view/animation/RotateAnimation;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const/high16 v6, 0x44b40000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object v2, v3

    .line 98
    .local v2, "anim":Landroid/view/animation/Animation;
    move-object v3, v2

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    move-object v3, v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    move-object v3, v2

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 101
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 102
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 103
    move-object v3, v1

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    return-void
.end method

.method private synthetic lambda$setDownloadingUpdate$3()V
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    new-instance v1, Lninja/vextil/Tasks/DownloadUpdateTask;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lninja/vextil/Tasks/DownloadUpdateTask;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->subVersion:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$10;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Lninja/vextil/Tasks/TaskCallback;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lninja/vextil/UpdaterActivity$$Lambda$11;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Lninja/vextil/Tasks/TaskCallback;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lninja/vextil/Tasks/DownloadUpdateTask;->execute(Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;Lninja/vextil/Tasks/TaskCallback;)V

    return-void
.end method

.method private synthetic lambda$setNoNewUpdate$5(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Lninja/vextil/UpdaterActivity;->setCheckingForUpdate()V

    return-void
.end method

.method private synthetic lambda$setUpdateDownloaded$4(Ljava/lang/String;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    .line 126
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v3

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 127
    move-object v4, v3

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 128
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lninja/vextil/UpdaterActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method private synthetic lambda$setVisibleIcon$6()V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lninja/vextil/Resources;->pulseAnimation:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v1, v2

    .line 227
    .local v1, "pulse":Landroid/view/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    return-void
.end method

.method private runNewCheckForUpdateTask()V
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    new-instance v1, Lninja/vextil/Tasks/CheckForUpdateTask;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lninja/vextil/Tasks/CheckForUpdateTask;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->version:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$8;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Lninja/vextil/Tasks/TaskCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lninja/vextil/Tasks/CheckForUpdateTask;->execute(Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;)V

    .line 143
    return-void
.end method

.method private setCheckingForUpdate()V
    .locals 7

    .prologue
    .line 93
    move-object v1, p0

    .local v1, "this":Lninja/vextil/UpdaterActivity;
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setVisibleIcon(Landroid/widget/ImageView;)V

    .line 94
    move-object v2, v1

    const-string v3, "Checking for updates..."

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;)V

    .line 95
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v1

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$3;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 105
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v1

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$4;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 106
    return-void
.end method

.method private setDownloadingUpdate()V
    .locals 7

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Lninja/vextil/UpdaterActivity;
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setVisibleIcon(Landroid/widget/ImageView;)V

    .line 111
    move-object v2, v1

    const-string v3, "New version found!"

    const-string v4, "Downloading..."

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v1

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$5;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 117
    return-void
.end method

.method private setNoNewUpdate()V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lninja/vextil/UpdaterActivity;->setVisibleIcon(Landroid/widget/ImageView;)V

    .line 135
    move-object v1, v0

    const-string v2, "No updates found."

    const-string v3, "You\'re all set."

    invoke-direct {v1, v2, v3}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    const-string v2, "Check for update"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    move-object v2, v0

    invoke-static {v2}, Lninja/vextil/UpdaterActivity$$Lambda$7;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "textTopS":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "textTopS":Ljava/lang/String;
    move-object v2, p2

    .local v2, "textBottomS":Ljava/lang/String;
    sget-object v3, Lcom/daimajia/androidanimations/library/Techniques;->SlideOutRight:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v3}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    new-instance v4, Lninja/vextil/UpdaterActivity$6;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lninja/vextil/UpdaterActivity$6;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 254
    invoke-virtual {v3, v4, v5}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterActivity;->textTop:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v3

    .line 256
    sget-object v3, Lcom/daimajia/androidanimations/library/Techniques;->SlideOutRight:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v3}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    new-instance v4, Lninja/vextil/UpdaterActivity$7;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lninja/vextil/UpdaterActivity$7;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 267
    invoke-virtual {v3, v4, v5}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterActivity;->textBottom:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v3

    .line 269
    return-void
.end method

.method private setUpdateDownloaded(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setVisibleIcon(Landroid/widget/ImageView;)V

    .line 122
    move-object v2, v0

    const-string v3, "Update downloaded!"

    const-string v4, "Ready to install."

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    const-string v3, "Install"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lninja/vextil/UpdaterActivity$$Lambda$6;->lambdaFactory$(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method private setVisibleIcon(Landroid/widget/ImageView;)V
    .locals 8

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$1;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 183
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$2;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    .line 191
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 193
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$3;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    .line 201
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 203
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$4;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    .line 211
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 213
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->BounceIn:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lninja/vextil/UpdaterActivity$5;-><init>(Lninja/vextil/UpdaterActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v1

    .line 222
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 224
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    if-ne v2, v3, :cond_0

    .line 225
    new-instance v2, Landroid/os/Handler;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v0

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$9;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 229
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->SlideInUp:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckForUpdateFinished(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    move-object v2, v0

    invoke-direct {v2}, Lninja/vextil/UpdaterActivity;->setDownloadingUpdate()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lninja/vextil/UpdaterActivity;->setNoNewUpdate()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    move-object v2, v0

    sget v3, Lninja/vextil/Resources;->updaterActivity:I

    invoke-virtual {v2, v3}, Lninja/vextil/UpdaterActivity;->setContentView(I)V

    .line 44
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lninja/vextil/UpdaterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lninja/vextil/Resources;->versionCode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->version:Ljava/lang/String;

    .line 45
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lninja/vextil/UpdaterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lninja/vextil/Resources;->subVersionCode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->subVersion:Ljava/lang/String;

    .line 46
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->textTop:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->textTop:Landroid/widget/TextView;

    .line 47
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->textBottom:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->textBottom:Landroid/widget/TextView;

    .line 48
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->buttonContainer:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    .line 49
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->iconRefresh:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    .line 50
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->iconDone:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    .line 51
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->iconDownload:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    .line 52
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->iconLogo:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    .line 53
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->progressBar:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 54
    move-object v2, v0

    move-object v3, v0

    sget v4, Lninja/vextil/Resources;->buttonRight:I

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    :cond_0
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v0

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$1;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 67
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v0

    invoke-static {v3}, Lninja/vextil/UpdaterActivity$$Lambda$2;->lambdaFactory$(Lninja/vextil/UpdaterActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 168
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lninja/vextil/UpdaterActivity;
    :goto_0
    return v0

    .line 165
    .restart local v0    # "this":Lninja/vextil/UpdaterActivity;
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->finish()V

    .line 166
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public viewChangelogs(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    const-string v4, "http://whatsapp.vexmd.info/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v2, v4

    .line 157
    .local v2, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.VIEW"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v4

    .line 158
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lninja/vextil/UpdaterActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method
