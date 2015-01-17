.class final synthetic Lninja/vextil/UpdaterActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lninja/vextil/UpdaterActivity;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$$Lambda$6;->arg$1:Lninja/vextil/UpdaterActivity;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lninja/vextil/UpdaterActivity$$Lambda$6;->arg$2:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lninja/vextil/UpdaterActivity$$Lambda$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lninja/vextil/UpdaterActivity$$Lambda$6;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lninja/vextil/UpdaterActivity$$Lambda$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lninja/vextil/UpdaterActivity$$Lambda$6;-><init>(Lninja/vextil/UpdaterActivity;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$$Lambda$6;->arg$1:Lninja/vextil/UpdaterActivity;

    move-object v3, v0

    iget-object v3, v3, Lninja/vextil/UpdaterActivity$$Lambda$6;->arg$2:Ljava/lang/String;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lninja/vextil/UpdaterActivity;->access$lambda$5(Lninja/vextil/UpdaterActivity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
