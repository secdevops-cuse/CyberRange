.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompatImplBase.java"


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p10, "resId"    # I
    .param p11, "fitIn1U"    # Z

    .prologue
    .line 168
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p10

    invoke-direct {v2, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 169
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const/4 v11, 0x0

    .line 170
    .local v11, "showLine3":Z
    const/4 v10, 0x0

    .line 174
    .local v10, "showLine2":Z
    if-eqz p5, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_6

    .line 175
    sget v3, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 176
    sget v3, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 180
    :goto_0
    if-eqz p1, :cond_0

    .line 181
    sget v3, Landroid/support/v7/appcompat/R$id;->title:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    :cond_0
    if-eqz p2, :cond_1

    .line 184
    sget v3, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 185
    const/4 v11, 0x1

    .line 187
    :cond_1
    if-eqz p3, :cond_7

    .line 188
    sget v3, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    sget v3, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    const/4 v11, 0x1

    .line 208
    :goto_1
    if-eqz p6, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 209
    sget v3, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    if-eqz p2, :cond_a

    .line 211
    sget v3, Landroid/support/v7/appcompat/R$id;->text2:I

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 212
    sget v3, Landroid/support/v7/appcompat/R$id;->text2:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    const/4 v10, 0x1

    .line 220
    :cond_2
    :goto_2
    if-eqz v10, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    .line 221
    if-eqz p11, :cond_3

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 224
    .local v9, "res":Landroid/content/res/Resources;
    sget v3, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v12, v3

    .line 226
    .local v12, "subTextSize":F
    sget v3, Landroid/support/v7/appcompat/R$id;->text:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v12}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 229
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v12    # "subTextSize":F
    :cond_3
    sget v3, Landroid/support/v7/appcompat/R$id;->line1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 232
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v3, p8, v4

    if-eqz v3, :cond_5

    .line 233
    if-eqz p7, :cond_b

    .line 234
    sget v3, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 235
    sget v3, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v4, "setBase"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v6, v14

    add-long v6, v6, p8

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 237
    sget v3, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v4, "setStarted"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 243
    :cond_5
    :goto_3
    sget v4, Landroid/support/v7/appcompat/R$id;->line3:I

    if-eqz v11, :cond_c

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    return-object v2

    .line 178
    :cond_6
    sget v3, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 191
    :cond_7
    if-lez p4, :cond_9

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 194
    .local v13, "tooBig":I
    move/from16 v0, p4

    if-le v0, v13, :cond_8

    .line 195
    sget v3, Landroid/support/v7/appcompat/R$id;->info:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    :goto_5
    sget v3, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const/4 v11, 0x1

    .line 203
    goto/16 :goto_1

    .line 198
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 199
    .local v8, "f":Ljava/text/NumberFormat;
    sget v3, Landroid/support/v7/appcompat/R$id;->info:I

    move/from16 v0, p4

    int-to-long v4, v0

    invoke-virtual {v8, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 204
    .end local v8    # "f":Ljava/text/NumberFormat;
    .end local v13    # "tooBig":I
    :cond_9
    sget v3, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 215
    :cond_a
    sget v3, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 239
    :cond_b
    sget v3, Landroid/support/v7/appcompat/R$id;->time:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    sget v3, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v4, "setTime"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_3

    .line 243
    :cond_c
    const/16 v3, 0x8

    goto :goto_4
.end method

.method private static generateBigContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p11, "showCancelButton"    # Z
    .param p12, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 118
    .local p10, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 119
    .local v14, "actionCount":I
    invoke-static {v14}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigLayoutResource(I)I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-static/range {v2 .. v13}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;

    move-result-object v15

    .line 123
    .local v15, "big":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v15, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 124
    if-lez v14, :cond_0

    .line 125
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v14, :cond_0

    .line 126
    move-object/from16 v0, p10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 127
    .local v16, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 125
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 130
    .end local v16    # "button":Landroid/widget/RemoteViews;
    .end local v17    # "i":I
    :cond_0
    if-eqz p11, :cond_1

    .line 131
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v3, "setAlpha"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 134
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, p12

    invoke-virtual {v15, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 138
    :goto_1
    return-object v15

    .line 136
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v3, 0x8

    invoke-virtual {v15, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private static generateContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p11, "actionsToShowInCompact"    # [I
    .param p12, "showCancelButton"    # Z
    .param p13, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 65
    .local p10, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget v12, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-static/range {v2 .. v13}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;

    move-result-object v19

    .line 69
    .local v19, "view":Landroid/widget/RemoteViews;
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v18

    .line 70
    .local v18, "numActions":I
    if-nez p11, :cond_0

    const/4 v14, 0x0

    .line 73
    .local v14, "N":I
    :goto_0
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 74
    if-lez v14, :cond_2

    .line 75
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v14, :cond_2

    .line 76
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v6, v18, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v14    # "N":I
    .end local v17    # "i":I
    :cond_0
    move-object/from16 v0, p11

    array-length v2, v0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_0

    .line 82
    .restart local v14    # "N":I
    .restart local v17    # "i":I
    :cond_1
    aget v2, p11, v17

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/app/NotificationCompatBase$Action;

    .line 83
    .local v15, "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 84
    .local v16, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 75
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 87
    .end local v15    # "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    .end local v16    # "button":Landroid/widget/RemoteViews;
    .end local v17    # "i":I
    :cond_2
    if-eqz p12, :cond_3

    .line 88
    sget v2, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, v19

    move-object/from16 v1, p13

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v3, "setAlpha"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 97
    :goto_2
    return-object v19

    .line 94
    :cond_3
    sget v2, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 144
    .local v1, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v0, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 147
    if-nez v1, :cond_0

    .line 148
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    .line 151
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 153
    :cond_1
    return-object v0

    .line 143
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v1    # "tombstone":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getBigLayoutResource(I)I
    .locals 1
    .param p0, "actionCount"    # I

    .prologue
    .line 157
    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 158
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    .line 160
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    goto :goto_0
.end method

.method public static overrideBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V
    .locals 1
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "number"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p12, "showCancelButton"    # Z
    .param p13, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p11, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static/range {p1 .. p13}, Landroid/support/v7/app/NotificationCompatImplBase;->generateBigContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 108
    if-eqz p12, :cond_0

    .line 109
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 111
    :cond_0
    return-void
.end method

.method public static overrideContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V
    .locals 3
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "number"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p12, "actionsToShowInCompact"    # [I
    .param p13, "showCancelButton"    # Z
    .param p14, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p11, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static/range {p1 .. p14}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 54
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 55
    if-eqz p13, :cond_0

    .line 56
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 58
    :cond_0
    return-void
.end method
