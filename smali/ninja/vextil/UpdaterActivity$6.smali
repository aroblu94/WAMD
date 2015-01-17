.class Lninja/vextil/UpdaterActivity$6;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lninja/vextil/UpdaterActivity;

.field final synthetic val$textTopS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$6;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$6;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$6;->val$textTopS:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 200
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$6;
    move-object v1, p1

    .local v1, "animation":Lcom/nineoldandroids/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$6;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v2}, Lninja/vextil/UpdaterActivity;->access$400(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$6;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v2}, Lninja/vextil/UpdaterActivity;->access$400(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity$6;->val$textTopS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$6;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v2}, Lninja/vextil/UpdaterActivity;->access$400(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    sget-object v2, Lcom/daimajia/androidanimations/library/Techniques;->SlideInLeft:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v2}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity$6;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v3}, Lninja/vextil/UpdaterActivity;->access$400(Lninja/vextil/UpdaterActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v2

    .line 199
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 192
    return-void
.end method
