.class Lninja/vextil/UpdaterActivity$13;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setIconVisible(Landroid/widget/ImageView;)V
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
    .line 221
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$13;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$13;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$13;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$13;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-virtual {v2}, Lninja/vextil/UpdaterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v1, v2

    .line 225
    .local v1, "pulse":Landroid/view/animation/Animation;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$13;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v2}, Lninja/vextil/UpdaterActivity;->access$600(Lninja/vextil/UpdaterActivity;)Landroid/widget/ImageView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    return-void
.end method
