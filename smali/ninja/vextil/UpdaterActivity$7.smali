.class Lninja/vextil/UpdaterActivity$7;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setNoNewUpdate()V
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
    .line 160
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$7;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$7;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$7;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$7;->this$0:Lninja/vextil/UpdaterActivity;

    invoke-static {v2}, Lninja/vextil/UpdaterActivity;->access$100(Lninja/vextil/UpdaterActivity;)V

    .line 163
    return-void
.end method
