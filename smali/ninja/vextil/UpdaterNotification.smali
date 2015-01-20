.class public Lninja/vextil/UpdaterNotification;
.super Ljava/lang/Object;
.source "UpdaterNotification.java"


# static fields
.field private static notificationManager:Landroid/app/NotificationManager;


# instance fields
.field private UID:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private notification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private subVersion:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterNotification;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterNotification;->activity:Landroid/app/Activity;

    .line 31
    move-object v2, v1

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sput-object v2, Lninja/vextil/UpdaterNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lninja/vextil/Resources;->versionCode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lninja/vextil/UpdaterNotification;->version:Ljava/lang/String;

    .line 33
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lninja/vextil/Resources;->subVersionCode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lninja/vextil/UpdaterNotification;->subVersion:Ljava/lang/String;

    .line 34
    const-string v2, "uid"

    invoke-static {v2}, Lninja/vextil/Utils;->fileExists(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    move-object v2, v0

    const-string v3, "uid"

    invoke-static {v3}, Lninja/vextil/Utils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lninja/vextil/UpdaterNotification;->UID:Ljava/lang/String;

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v2, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lninja/vextil/UpdaterNotification;->UID:Ljava/lang/String;

    .line 38
    const-string v2, "uid"

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterNotification;->UID:Ljava/lang/String;

    invoke-static {v2, v3}, Lninja/vextil/Utils;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lninja/vextil/UpdaterNotification;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterNotification;->onCheckForUpdateFinished(Ljava/lang/String;)V

    return-void
.end method

.method private downloadUpdate()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method private onCheckForUpdateFinished(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterNotification;
    move-object v1, p1

    .local v1, "result":Ljava/lang/String;
    move-object v4, v1

    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    move-object v4, v0

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lninja/vextil/UpdaterNotification;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lninja/vextil/UpdaterNotification;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterNotification;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v5, "New update!"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "Tap to update WhatsAppMD"

    .line 52
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f020035

    .line 53
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 54
    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterNotification;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    const v5, 0x5cbc6b

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 55
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lninja/vextil/UpdaterNotification;->activity:Landroid/app/Activity;

    const-class v7, Lninja/vextil/UpdaterActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v4

    .line 56
    .local v2, "resultIntent":Landroid/content/Intent;
    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterNotification;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object v6, v2

    const/high16 v7, 0x8000000

    .line 57
    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v3, v4

    .line 63
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterNotification;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 64
    sget-object v4, Lninja/vextil/UpdaterNotification;->notificationManager:Landroid/app/NotificationManager;

    const v5, 0x180a8

    move-object v6, v0

    iget-object v6, v6, Lninja/vextil/UpdaterNotification;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 67
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static run(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lninja/vextil/UpdaterNotification;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lninja/vextil/UpdaterNotification;-><init>(Landroid/app/Activity;)V

    move-object v1, v2

    .line 25
    .local v1, "updaterNotification":Lninja/vextil/UpdaterNotification;
    move-object v2, v1

    invoke-virtual {v2}, Lninja/vextil/UpdaterNotification;->checkForUpdate()V

    .line 26
    return-void
.end method


# virtual methods
.method public checkForUpdate()V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lninja/vextil/UpdaterNotification;
    new-instance v1, Lninja/vextil/Tasks/CheckForUpdateTask;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lninja/vextil/Tasks/CheckForUpdateTask;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterNotification;->activity:Landroid/app/Activity;

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterNotification;->version:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lninja/vextil/UpdaterNotification;->subVersion:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lninja/vextil/UpdaterNotification;->UID:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lninja/vextil/UpdaterNotification$$Lambda$1;->lambdaFactory$(Lninja/vextil/UpdaterNotification;)Lninja/vextil/Tasks/TaskCallback;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lninja/vextil/Tasks/CheckForUpdateTask;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;)V

    .line 45
    return-void
.end method
