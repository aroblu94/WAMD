.class public Lninja/vextil/Tasks/CheckForUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckForUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field executeCallback:Lninja/vextil/Tasks/TaskCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/CheckForUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .prologue
    .line 49
    move-object/from16 v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object/from16 v1, p1

    .local v1, "urls":[Ljava/lang/String;
    const-string v13, ""

    move-object v2, v13

    .line 50
    .local v2, "response":Ljava/lang/String;
    move-object v13, v1

    move-object v3, v13

    move-object v13, v3

    array-length v13, v13

    move v4, v13

    const/4 v13, 0x0

    move v5, v13

    :goto_0
    move v13, v5

    move v14, v4

    if-ge v13, v14, :cond_2

    move-object v13, v3

    move v14, v5

    aget-object v13, v13, v14

    move-object v6, v13

    .line 51
    .local v6, "url":Ljava/lang/String;
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v7, v13

    .line 52
    .local v7, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v6

    invoke-direct {v14, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v8, v13

    .line 54
    .local v8, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lninja/vextil/Tasks/CheckForUpdateTask;->activity:Landroid/app/Activity;

    if-nez v13, :cond_0

    .line 55
    move-object v13, v8

    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string v16, "VXNlci1BZ2VudA=="

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    new-instance v15, Ljava/lang/String;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string v17, "V0FNRC1QaW5n"

    const/16 v18, 0x0

    .line 56
    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([B)V

    .line 55
    invoke-virtual {v13, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_1
    move-object v13, v7

    move-object v14, v8

    invoke-virtual {v13, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    move-object v9, v13

    .line 65
    .local v9, "execute":Lorg/apache/http/HttpResponse;
    move-object v13, v9

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    move-object v10, v13

    .line 67
    .local v10, "content":Ljava/io/InputStream;
    new-instance v13, Ljava/io/BufferedReader;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/io/InputStreamReader;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v11, v13

    .line 69
    .local v11, "buffer":Ljava/io/BufferedReader;
    const-string v13, ""

    move-object v12, v13

    .line 70
    .local v12, "s":Ljava/lang/String;
    :goto_2
    move-object v13, v11

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v12, v14

    if-eqz v13, :cond_1

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    goto :goto_2

    .line 59
    .end local v9    # "execute":Lorg/apache/http/HttpResponse;
    .end local v10    # "content":Ljava/io/InputStream;
    .end local v11    # "buffer":Ljava/io/BufferedReader;
    .end local v12    # "s":Ljava/lang/String;
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lninja/vextil/Tasks/CheckForUpdateTask;->activity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lninja/vextil/Tasks/CheckForUpdateTask;->activity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x40

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    move-object v9, v13

    .line 61
    .local v9, "info":Landroid/content/pm/PackageInfo;
    move-object v13, v8

    new-instance v14, Ljava/lang/String;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string v16, "VXNlci1BZ2VudA=="

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    move-object v15, v9

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    .line 62
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "SHA-1"

    invoke-static/range {v15 .. v16}, Lninja/vextil/Utils;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    invoke-virtual {v13, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 73
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    move-object v9, v13

    .line 74
    .local v9, "e":Ljava/lang/Exception;
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 75
    .local v9, "execute":Lorg/apache/http/HttpResponse;
    .restart local v10    # "content":Ljava/io/InputStream;
    .restart local v11    # "buffer":Ljava/io/BufferedReader;
    .restart local v12    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_3

    .line 77
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v8    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "execute":Lorg/apache/http/HttpResponse;
    .end local v10    # "content":Ljava/io/InputStream;
    .end local v11    # "buffer":Ljava/io/BufferedReader;
    .end local v12    # "s":Ljava/lang/String;
    :cond_2
    move-object v13, v2

    move-object v0, v13

    .end local v0    # "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    return-object v0
.end method

.method public execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;)V
    .locals 16

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object/from16 v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object/from16 v2, p2

    .local v2, "version":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "subversion":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "UID":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "executeCallback":Lninja/vextil/Tasks/TaskCallback;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lninja/vextil/Tasks/CheckForUpdateTask;->activity:Landroid/app/Activity;

    .line 35
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lninja/vextil/Tasks/CheckForUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    .line 36
    move-object v6, v0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://whatsapp.vexmd.info/shouldUpdate.php?version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&sub_version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v4

    const/4 v14, 0x0

    .line 42
    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 36
    invoke-super {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v6

    .line 44
    return-void
.end method

.method public execute(Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;)V
    .locals 10

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, p2

    .local v2, "executeCallback":Lninja/vextil/Tasks/TaskCallback;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lninja/vextil/Tasks/CheckForUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    .line 29
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://whatsapp.vexmd.info/shouldUpdate.php?version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 30
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/CheckForUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/CheckForUpdateTask;
    move-object v1, p1

    .local v1, "result":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/Tasks/CheckForUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    move-object v3, v1

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lninja/vextil/Tasks/TaskCallback;->run(Ljava/lang/String;)V

    .line 83
    return-void
.end method
