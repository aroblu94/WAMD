.class public Lcom/whatsapp/IncorrectAppReleaseVersionActivity;
.super Lcom/whatsapp/DialogToastActivity;
.source "IncorrectAppReleaseVersionActivity.java"


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/String;

    const-string v6, "\u0013\'\u001at"

    const/4 v0, -0x1

    move-object v8, v7

    move-object v9, v7

    move v7, v1

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v10, v6

    move v11, v10

    move v12, v1

    move-object v10, v6

    :goto_1
    if-gt v11, v12, :cond_0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    packed-switch v0, :pswitch_data_0

    aput-object v6, v8, v7

    const-string v0, "20\u0001\u007fn\u00100Jg`\u000b+\u000f1g\u0008,Jty\u0013,\u000b1u\u001e.\u000f1;G"

    move-object v6, v0

    move v7, v2

    move-object v8, v9

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v6, v8, v7

    const-string v0, "\u000f*\u001ear]qEfv\u0010p\u001dy`\u0013-\u000baqI=\u0005|.\u00060\u000ecn\u000e:"

    move-object v6, v0

    move v7, v3

    move-object v8, v9

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v6, v8, v7

    const-string v0, "\n?\u0018zd\u0013dE>e\u0002*\u000bxm\u0014a\u0003u<\u00041\u0007?v\u000f?\u001eb`\u0017."

    move-object v6, v0

    move v7, v4

    move-object v8, v9

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v6, v8, v7

    const-string v0, "\u00063\u0010\u007f;Hq\u000baq\u0014q\u000b\u007fe\u00151\u0003u>\u0017c\t~lI)\u0002pu\u0014?\u001aa"

    move-object v6, v0

    move v7, v5

    move-object v8, v9

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v6, v8, v7

    const/4 v6, 0x5

    const-string v0, "\u00060\u000ecn\u000e:Dxo\u0013;\u0004e/\u0004?\u001etf\u0008,\u0013?I(\u0013/"

    move v7, v6

    move-object v8, v9

    move-object v6, v0

    move v0, v5

    goto :goto_0

    :pswitch_4
    aput-object v6, v8, v7

    const/4 v7, 0x6

    const-string v6, "\u00060\u000ecn\u000e:Dxo\u0013;\u0004e/\u0006=\u001exn\tp\'PH)"

    const/4 v0, 0x5

    move-object v8, v9

    goto :goto_0

    :pswitch_5
    aput-object v6, v8, v7

    sput-object v9, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    return-void

    :cond_0
    aget-char v13, v10, v12

    rem-int/lit8 v6, v12, 0x5

    packed-switch v6, :pswitch_data_1

    move v6, v2

    :goto_2
    xor-int/2addr v6, v13

    int-to-char v6, v6

    aput-char v6, v10, v12

    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_1

    :pswitch_6
    const/16 v6, 0x67

    goto :goto_2

    :pswitch_7
    const/16 v6, 0x5e

    goto :goto_2

    :pswitch_8
    const/16 v6, 0x6a

    goto :goto_2

    :pswitch_9
    const/16 v6, 0x11

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/whatsapp/DialogToastActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->startActivity(Landroid/content/Intent;)V

    .line 16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget v1, Lcom/whatsapp/App;->h:I

    .line 14
    invoke-super {p0, p1}, Lcom/whatsapp/DialogToastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->setContentView(I)V

    .line 5
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 19
    packed-switch v2, :pswitch_data_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    .line 3
    :pswitch_0
    const v3, 0x7f0e0037

    invoke-virtual {p0, v3}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aput-object v5, v4, v7

    sget-object v5, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    aget-object v5, v5, v9

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    if-eqz v1, :cond_1

    .line 13
    :pswitch_1
    const v3, 0x7f0e01a4

    invoke-virtual {p0, v3}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->z:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    :try_start_1
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    if-nez v1, :cond_0

    .line 1
    :cond_1
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/whatsapp/IncorrectAppReleaseVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 15
    new-instance v1, Lcom/whatsapp/adp;

    invoke-direct {v1, p0}, Lcom/whatsapp/adp;-><init>(Lcom/whatsapp/IncorrectAppReleaseVersionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    return-void

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
