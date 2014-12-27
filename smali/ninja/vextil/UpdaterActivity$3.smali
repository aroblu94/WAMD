.class Lninja/vextil/UpdaterActivity$3;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setCheckingForUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lninja/vextil/UpdaterActivity;


# direct methods
.method constructor <init>(Lninja/vextil/UpdaterActivity;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$3;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$3;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Lninja/vextil/UpdaterActivity$3;
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

    .line 112
    .local v2, "anim":Landroid/view/animation/Animation;
    move-object v3, v2

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    move-object v3, v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    move-object v3, v2

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 115
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 116
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 117
    move-object v3, v1

    iget-object v3, v3, Lninja/vextil/UpdaterActivity$3;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v3}, Lninja/vextil/UpdaterActivity;->access$200(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    return-void
.end method
