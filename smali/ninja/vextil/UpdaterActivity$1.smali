.class Lninja/vextil/UpdaterActivity$1;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 87
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$1;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$1;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$1;
    move-object v1, v0

    iget-object v1, v1, Lninja/vextil/UpdaterActivity$1;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v1}, Lninja/vextil/UpdaterActivity;->access$000(Lninja/vextil/UpdaterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    sget-object v1, Lcom/daimajia/androidanimations/library/Techniques;->SlideInUp:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-static {v1}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$1;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v2}, Lninja/vextil/UpdaterActivity;->access$000(Lninja/vextil/UpdaterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object v1

    .line 92
    return-void
.end method
