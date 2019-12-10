.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/support/v7/widget/ActivityChooserModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/support/v7/widget/ActivityChooserModel$1;

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1033
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 18
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1038
    const/4 v13, 0x0

    aget-object v4, p1, v13

    check-cast v4, Ljava/util/List;

    .line 1039
    .local v4, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v13, 0x1

    aget-object v5, p1, v13

    check-cast v5, Ljava/lang/String;

    .line 1041
    .local v5, "hostoryFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1044
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$200(Landroid/support/v7/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1050
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    .line 1053
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v13, 0x0

    :try_start_1
    invoke-interface {v12, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1054
    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1055
    const/4 v13, 0x0

    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1057
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 1058
    .local v11, "recordCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 1059
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 1060
    .local v10, "record":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    const/4 v13, 0x0

    const-string v14, "activity"

    iget-object v15, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    const/4 v13, 0x0

    const-string v14, "time"

    iget-wide v0, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const/4 v13, 0x0

    const-string v14, "weight"

    iget v15, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1045
    .end local v6    # "i":I
    .end local v10    # "record":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v11    # "recordCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v2

    .line 1046
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    const/4 v13, 0x0

    .line 1093
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v13

    .line 1071
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    const/4 v13, 0x0

    :try_start_2
    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_1

    .line 1087
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1093
    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :cond_1
    :goto_2
    const/4 v13, 0x0

    goto :goto_1

    .line 1077
    :catch_1
    move-exception v7

    .line 1078
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_4
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_1

    .line 1087
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1088
    :catch_2
    move-exception v13

    goto :goto_2

    .line 1079
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v9

    .line 1080
    .local v9, "ise":Ljava/lang/IllegalStateException;
    :try_start_6
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_1

    .line 1087
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1088
    :catch_4
    move-exception v13

    goto :goto_2

    .line 1081
    .end local v9    # "ise":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v8

    .line 1082
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_8
    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_1

    .line 1087
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_2

    .line 1088
    :catch_6
    move-exception v13

    goto/16 :goto_2

    .line 1084
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v15, 0x1

    # setter for: Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v14, v15}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    .line 1085
    if-eqz v3, :cond_2

    .line 1087
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1090
    :cond_2
    :goto_3
    throw v13

    .line 1088
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    :catch_7
    move-exception v13

    goto/16 :goto_2

    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :catch_8
    move-exception v14

    goto :goto_3
.end method
