.class public Lninja/vextil/Tasks/DownloadUpdateTask;
.super Landroid/os/AsyncTask;
.source "DownloadUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field executeCallback:Lninja/vextil/Tasks/TaskCallback;

.field progressCallback:Lninja/vextil/Tasks/TaskCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/DownloadUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    .prologue
    .line 27
    move-object/from16 v3, p0

    .local v3, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object/from16 v4, p1

    .local v4, "sUrl":[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/WhatsApp/Update.apk"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    .line 29
    .local v5, "path":Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/io/File;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v16

    .line 30
    .local v6, "file":Ljava/io/File;
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v16

    if-nez v16, :cond_1

    .line 32
    move-object/from16 v16, v6

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v16

    .line 35
    .line 45
    :goto_0
    :try_start_2
    new-instance v16, Ljava/net/URL;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v4

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v16

    .line 46
    .local v7, "url":Ljava/net/URL;
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v8, v16

    .line 47
    .local v8, "connection":Ljava/net/URLConnection;
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/net/URLConnection;->connect()V

    .line 49
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/net/URLConnection;->getContentLength()I

    move-result v16

    move/from16 v9, v16

    .line 51
    .local v9, "fileLength":I
    new-instance v16, Ljava/io/BufferedInputStream;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v10, v16

    .line 52
    .local v10, "input":Ljava/io/BufferedInputStream;
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v16

    .line 54
    .local v11, "output":Ljava/io/OutputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v12, v16

    .line 55
    .local v12, "data":[B
    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    .line 57
    .local v13, "total":J
    :goto_1
    move-object/from16 v16, v10

    move-object/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    move/from16 v24, v16

    move/from16 v16, v24

    move/from16 v17, v24

    move/from16 v15, v17

    .local v15, "count":I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 58
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lninja/vextil/Tasks/DownloadUpdateTask;->isCancelled()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 64
    :cond_0
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 65
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 66
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->close()V

    .line 69
    .line 70
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "connection":Ljava/net/URLConnection;
    .end local v9    # "fileLength":I
    .end local v10    # "input":Ljava/io/BufferedInputStream;
    .end local v11    # "output":Ljava/io/OutputStream;
    .end local v12    # "data":[B
    .end local v13    # "total":J
    .end local v15    # "count":I
    :goto_2
    move-object/from16 v16, v5

    move-object/from16 v3, v16

    .end local v3    # "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    return-object v3

    .line 33
    .restart local v3    # "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    .restart local v6    # "file":Ljava/io/File;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 34
    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    goto/16 :goto_0

    .line 37
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    .line 39
    move-object/from16 v16, v6

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    .line 42
    goto/16 :goto_0

    .line 40
    :catch_1
    move-exception v16

    move-object/from16 v7, v16

    .line 41
    .restart local v7    # "e":Ljava/io/IOException;
    move-object/from16 v16, v7

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 67
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v16

    move-object/from16 v6, v16

    .line 68
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 59
    .local v6, "file":Ljava/io/File;
    .local v7, "url":Ljava/net/URL;
    .restart local v8    # "connection":Ljava/net/URLConnection;
    .restart local v9    # "fileLength":I
    .restart local v10    # "input":Ljava/io/BufferedInputStream;
    .restart local v11    # "output":Ljava/io/OutputStream;
    .restart local v12    # "data":[B
    .restart local v13    # "total":J
    .restart local v15    # "count":I
    :cond_2
    move-wide/from16 v16, v13

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v13, v16

    .line 60
    move-object/from16 v16, v3

    const/16 v17, 0x1

    :try_start_5
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x0

    move-wide/from16 v20, v13

    const-wide/16 v22, 0x64

    mul-long v20, v20, v22

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v17}, Lninja/vextil/Tasks/DownloadUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 61
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    const/16 v18, 0x0

    move/from16 v19, v15

    invoke-virtual/range {v16 .. v19}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1
.end method

.method public execute(Ljava/lang/String;Lninja/vextil/Tasks/TaskCallback;Lninja/vextil/Tasks/TaskCallback;)V
    .locals 11

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, p1

    .local v1, "subVersion":Ljava/lang/String;
    move-object v2, p2

    .local v2, "executeCallback":Lninja/vextil/Tasks/TaskCallback;
    move-object v3, p3

    .local v3, "progressCallback":Lninja/vextil/Tasks/TaskCallback;
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lninja/vextil/Tasks/DownloadUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    .line 22
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lninja/vextil/Tasks/DownloadUpdateTask;->progressCallback:Lninja/vextil/Tasks/TaskCallback;

    .line 23
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://whatsapp.vexmd.info/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/latest.apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-super {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    .line 24
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/DownloadUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/Tasks/DownloadUpdateTask;->executeCallback:Lninja/vextil/Tasks/TaskCallback;

    move-object v3, v1

    invoke-interface {v2, v3}, Lninja/vextil/Tasks/TaskCallback;->run(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, p1

    .local v1, "progress":[Ljava/lang/Integer;
    move-object v2, v0

    iget-object v2, v2, Lninja/vextil/Tasks/DownloadUpdateTask;->progressCallback:Lninja/vextil/Tasks/TaskCallback;

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lninja/vextil/Tasks/TaskCallback;->run(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lninja/vextil/Tasks/DownloadUpdateTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lninja/vextil/Tasks/DownloadUpdateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
