.class public final Lcom/getbase/floatingactionbutton/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AddFloatingActionButton:[I

.field public static final AddFloatingActionButton_fab_plusIconColor:I = 0x0

.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_fab_colorNormal:I = 0x1

.field public static final FloatingActionButton_fab_colorPressed:I = 0x0

.field public static final FloatingActionButton_fab_icon:I = 0x2

.field public static final FloatingActionButton_fab_size:I = 0x3

.field public static final FloatingActionButton_fab_title:I = 0x4

.field public static final FloatingActionsMenu:[I

.field public static final FloatingActionsMenu_fab_addButtonColorNormal:I = 0x1

.field public static final FloatingActionsMenu_fab_addButtonColorPressed:I = 0x0

.field public static final FloatingActionsMenu_fab_addButtonPlusIconColor:I = 0x2

.field public static final FloatingActionsMenu_fab_expandDirection:I = 0x4

.field public static final FloatingActionsMenu_fab_labelStyle:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x7f01008d

    aput v3, v1, v2

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f01008b
        0x7f01008c
        0x7f01008e
        0x7f01008f
        0x7f010090
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f010091
        0x7f010092
        0x7f010093
        0x7f010094
        0x7f010095
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/getbase/floatingactionbutton/R$styleable;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
