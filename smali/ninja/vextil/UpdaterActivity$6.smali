.class Lninja/vextil/UpdaterActivity$6;
.super Ljava/lang/Object;
.source "UpdaterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lninja/vextil/UpdaterActivity;->setUpdateDownloaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lninja/vextil/UpdaterActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 145
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

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$6;->val$path:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterActivity$6;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v2, v3

    .line 148
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 149
    move-object v3, v2

    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lninja/vextil/UpdaterActivity$6;->val$path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 150
    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity$6;->this$0:Lninja/vextil/UpdaterActivity;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lninja/vextil/UpdaterActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method
