.class final synthetic Lninja/vextil/UpdaterActivity$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lninja/vextil/UpdaterActivity;


# direct methods
.method private constructor <init>(Lninja/vextil/UpdaterActivity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lninja/vextil/UpdaterActivity$$Lambda$7;->arg$1:Lninja/vextil/UpdaterActivity;

    return-void
.end method

.method private static get$Lambda(Lninja/vextil/UpdaterActivity;)Landroid/view/View$OnClickListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lninja/vextil/UpdaterActivity$$Lambda$7;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity$$Lambda$7;-><init>(Lninja/vextil/UpdaterActivity;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Lninja/vextil/UpdaterActivity;)Landroid/view/View$OnClickListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lninja/vextil/UpdaterActivity$$Lambda$7;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lninja/vextil/UpdaterActivity$$Lambda$7;-><init>(Lninja/vextil/UpdaterActivity;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/UpdaterActivity$$Lambda$7;->arg$1:Lninja/vextil/UpdaterActivity;

    move-object v3, v1

    invoke-static {v2, v3}, Lninja/vextil/UpdaterActivity;->access$lambda$6(Lninja/vextil/UpdaterActivity;Landroid/view/View;)V

    return-void
.end method
