.class Lninja/vextil/UpdaterActivity$5;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setDownloadingUpdate()V
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
    .line 132
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$5;
    move-object v1, p1

    .local v1, "this$0":Lninja/vextil/UpdaterActivity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$5;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$5;
    new-instance v1, Lninja/vextil/UpdaterActivity$DownloadUpdateTask;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity$5;->this$0:Lninja/vextil/UpdaterActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lninja/vextil/UpdaterActivity$DownloadUpdateTask;-><init>(Lninja/vextil/UpdaterActivity;Lninja/vextil/UpdaterActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "http://whatsapp.vexmd.info/S/latest.apk"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lninja/vextil/UpdaterActivity$DownloadUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 136
    return-void
.end method
