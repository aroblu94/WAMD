.class public Lninja/vextil/UpdaterActivity;
.super Landroid/app/Activity;
.source "UpdaterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lninja/vextil/UpdaterActivity$DownloadUpdateTask;,
        Lninja/vextil/UpdaterActivity$CheckForUpdateTask;
    }
.end annotation


# instance fields
.field private buttonContainer:Landroid/widget/RelativeLayout;

.field private final buttonContainerR:I

.field private buttonRight:Landroid/widget/Button;

.field private final buttonRightR:I

.field private iconDone:Landroid/widget/ImageView;

.field private final iconDoneR:I

.field private iconDownload:Landroid/widget/ImageView;

.field private final iconDownloadR:I

.field private iconLogo:Landroid/widget/ImageView;

.field private final iconLogoR:I

.field private iconRefresh:Landroid/widget/ImageView;

.field private final iconRefreshR:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private final progressBarR:I

.field private final pulseAnimationR:I

.field private final subVersionCode:Ljava/lang/String;

.field private textBottom:Landroid/widget/TextView;

.field private final textBottomR:I

.field private textTop:Landroid/widget/TextView;

.field private final textTopR:I

.field private final updaterActivityR:I

.field private final versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 44
    move-object v1, v0

    const-string v2, "200001"

    iput-object v2, v1, Lninja/vextil/UpdaterActivity;->versionCode:Ljava/lang/String;

    .line 45
    move-object v1, v0

    const-string v2, "S"

    iput-object v2, v1, Lninja/vextil/UpdaterActivity;->subVersionCode:Ljava/lang/String;

    .line 47
    move-object v1, v0

    const v2, 0x7f0b030b

    iput v2, v1, Lninja/vextil/UpdaterActivity;->textTopR:I

    .line 48
    move-object v1, v0

    const v2, 0x7f0b030c

    iput v2, v1, Lninja/vextil/UpdaterActivity;->textBottomR:I

    .line 49
    move-object v1, v0

    const v2, 0x7f0b030e

    iput v2, v1, Lninja/vextil/UpdaterActivity;->buttonContainerR:I

    .line 50
    move-object v1, v0

    const v2, 0x7f0b030f

    iput v2, v1, Lninja/vextil/UpdaterActivity;->buttonRightR:I

    .line 51
    move-object v1, v0

    const v2, 0x7f0b0307

    iput v2, v1, Lninja/vextil/UpdaterActivity;->iconRefreshR:I

    .line 52
    move-object v1, v0

    const v2, 0x7f0b0309

    iput v2, v1, Lninja/vextil/UpdaterActivity;->iconDoneR:I

    .line 53
    move-object v1, v0

    const v2, 0x7f0b0308

    iput v2, v1, Lninja/vextil/UpdaterActivity;->iconDownloadR:I

    .line 54
    move-object v1, v0

    const v2, 0x7f0b030a

    iput v2, v1, Lninja/vextil/UpdaterActivity;->iconLogoR:I

    .line 55
    move-object v1, v0

    const v2, 0x7f0b030d

    iput v2, v1, Lninja/vextil/UpdaterActivity;->progressBarR:I

    .line 56
    move-object v1, v0

    const v2, 0x7f0300bd

    iput v2, v1, Lninja/vextil/UpdaterActivity;->updaterActivityR:I

    .line 57
    move-object v1, v0

    const v2, 0x7f040005

    iput v2, v1, Lninja/vextil/UpdaterActivity;->pulseAnimationR:I

    .line 321
    return-void
.end method

.method static synthetic access$000(Lninja/vextil/UpdaterActivity;)Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$100(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->setCheckingForUpdate()V

    return-void
.end method

.method static synthetic access$1100(Lninja/vextil/UpdaterActivity;)Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$1200(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setUpdateDownloaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$300(Lninja/vextil/UpdaterActivity;)V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    invoke-direct {v1}, Lninja/vextil/UpdaterActivity;->runNewCheckForUpdateTask()V

    return-void
.end method

.method static synthetic access$500(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$600(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$700(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$800(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->textTop:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method static synthetic access$900(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->textBottom:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "x0":Lninja/vextil/UpdaterActivity;
    return-object v0
.end method

.method private runNewCheckForUpdateTask()V
    .locals 7

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    new-instance v1, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;-><init>(Lninja/vextil/UpdaterActivity;Lninja/vextil/UpdaterActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "http://whatsapp.vexmd.info/shouldUpdate.php?version=200000&subVersion=S"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lninja/vextil/UpdaterActivity$CheckForUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 278
    return-void
.end method

.method private setCheckingForUpdate()V
    .locals 7

    .prologue
    .line 105
    move-object v1, p0

    .local v1, "this":Lninja/vextil/UpdaterActivity;
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setIconVisible(Landroid/widget/ImageView;)V

    .line 106
    move-object v2, v1

    const-string v3, "Checking for updates..."

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;)V

    .line 107
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lninja/vextil/UpdaterActivity$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$3;-><init>(Lninja/vextil/UpdaterActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 120
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lninja/vextil/UpdaterActivity$4;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$4;-><init>(Lninja/vextil/UpdaterActivity;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 126
    return-void
.end method

.method private setDownloadingUpdate()V
    .locals 7

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Lninja/vextil/UpdaterActivity;
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setIconVisible(Landroid/widget/ImageView;)V

    .line 131
    move-object v2, v1

    const-string v3, "New version found!"

    const-string v4, "Downloading..."

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lninja/vextil/UpdaterActivity$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$5;-><init>(Lninja/vextil/UpdaterActivity;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 138
    return-void
.end method

.method private setIconVisible(Landroid/widget/ImageView;)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$8;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$8;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    .line 177
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 179
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$9;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$9;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 189
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$10;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$10;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    .line 197
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 199
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->FadeOut:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$11;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$11;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    .line 207
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 209
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->BounceIn:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    new-instance v3, Lninja/vextil/UpdaterActivity$12;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lninja/vextil/UpdaterActivity$12;-><init>(Lninja/vextil/UpdaterActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v1

    .line 218
    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 220
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    if-ne v2, v3, :cond_0

    .line 221
    new-instance v2, Landroid/os/Handler;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lninja/vextil/UpdaterActivity$13;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$13;-><init>(Lninja/vextil/UpdaterActivity;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->SlideInUp:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNoNewUpdate()V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lninja/vextil/UpdaterActivity;->setIconVisible(Landroid/widget/ImageView;)V

    .line 158
    move-object v1, v0

    const-string v2, "No updates found."

    const-string v3, "You\'re all set."

    invoke-direct {v1, v2, v3}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    const-string v2, "Check for update"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    new-instance v2, Lninja/vextil/UpdaterActivity$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lninja/vextil/UpdaterActivity$7;-><init>(Lninja/vextil/UpdaterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "textTopS":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "textTopS":Ljava/lang/String;
    move-object v2, p2

    .local v2, "textBottomS":Ljava/lang/String;
    sget-object v3, Lcom/daimajia/androidanimations/library/Techniques;->SlideOutRight:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v3}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    new-instance v4, Lninja/vextil/UpdaterActivity$14;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lninja/vextil/UpdaterActivity$14;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 253
    invoke-virtual {v3, v4, v5}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterActivity;->textTop:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v3

    .line 255
    sget-object v3, Lcom/daimajia/androidanimations/library/Techniques;->SlideOutRight:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v3}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    new-instance v4, Lninja/vextil/UpdaterActivity$15;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lninja/vextil/UpdaterActivity$15;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 266
    invoke-virtual {v3, v4, v5}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterActivity;->textBottom:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v3

    .line 268
    return-void
.end method

.method private setUpdateDownloaded(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity;->setIconVisible(Landroid/widget/ImageView;)V

    .line 143
    move-object v2, v0

    const-string v3, "Update downloaded!"

    const-string v4, "Ready to install."

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    const-string v3, "Install"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    new-instance v3, Lninja/vextil/UpdaterActivity$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lninja/vextil/UpdaterActivity$6;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method


# virtual methods
.method public OnCheckForUpdateFinished(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    move-object v2, v0

    invoke-direct {v2}, Lninja/vextil/UpdaterActivity;->setDownloadingUpdate()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lninja/vextil/UpdaterActivity;->setNoNewUpdate()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    move-object v2, v0

    const v3, 0x7f0300bd

    invoke-virtual {v2, v3}, Lninja/vextil/UpdaterActivity;->setContentView(I)V

    .line 71
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b030b

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->textTop:Landroid/widget/TextView;

    .line 72
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b030c

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->textBottom:Landroid/widget/TextView;

    .line 73
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b030e

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    .line 74
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b0307

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconRefresh:Landroid/widget/ImageView;

    .line 75
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b0309

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconDone:Landroid/widget/ImageView;

    .line 76
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b0308

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconDownload:Landroid/widget/ImageView;

    .line 77
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b030a

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->iconLogo:Landroid/widget/ImageView;

    .line 78
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b030d

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 79
    move-object v2, v0

    move-object v3, v0

    const v4, 0x7f0b030f

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lninja/vextil/UpdaterActivity;->buttonRight:Landroid/widget/Button;

    .line 81
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity;->buttonContainer:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    :cond_0
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lninja/vextil/UpdaterActivity$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$1;-><init>(Lninja/vextil/UpdaterActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 95
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lninja/vextil/UpdaterActivity$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lninja/vextil/UpdaterActivity$2;-><init>(Lninja/vextil/UpdaterActivity;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 394
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lninja/vextil/UpdaterActivity;
    :goto_0
    return v0

    .line 391
    .restart local v0    # "this":Lninja/vextil/UpdaterActivity;
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->finish()V

    .line 392
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public viewChangelogs(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    const-string v4, "http://whatsapp.vexmd.info/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v2, v4

    .line 383
    .local v2, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.VIEW"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v4

    .line 384
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lninja/vextil/UpdaterActivity;->startActivity(Landroid/content/Intent;)V

    .line 385
    return-void
.end method
