.class public final Lcom/daimajia/androidanimations/library/YoYo$YoYoString;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/androidanimations/library/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YoYoString"
.end annotation


# instance fields
.field private animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "animator"    # Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->target:Landroid/view/View;

    .line 121
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;Landroid/view/View;Lcom/daimajia/androidanimations/library/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/daimajia/androidanimations/library/YoYo$1;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;-><init>(Lcom/daimajia/androidanimations/library/BaseViewAnimator;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "reset"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    invoke-virtual {v0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->cancel()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->animator:Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    iget-object v1, p0, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->target:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->reset(Landroid/view/View;)V

    .line 137
    :cond_0
    return-void
.end method
