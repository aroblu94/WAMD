.class Lninja/vextil/UpdaterActivity$5;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setVisibleIcon(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lninja/vextil/UpdaterActivity;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lninja/vextil/UpdaterActivity;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$5;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$5;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$5;->val$view:Landroid/widget/ImageView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 220
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$5;
    move-object v1, p1

    .local v1, "animation":Lcom/nineoldandroids/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$5;->val$view:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 221
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 215
    return-void
.end method
