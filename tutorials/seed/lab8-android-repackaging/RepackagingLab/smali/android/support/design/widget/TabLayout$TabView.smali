.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 1181
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1182
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1179
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1183
    iput-object p3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1184
    # getter for: Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$300(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    # getter for: Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$300(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    :cond_0
    # getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    # getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$500(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    # getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    # getter for: Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$700(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1189
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1191
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1192
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .prologue
    .line 1432
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 9
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "iconView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 1355
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1356
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1358
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    .line 1359
    if-eqz v2, :cond_4

    .line 1360
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1361
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1362
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1367
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1370
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v1, 0x1

    .line 1371
    .local v1, "hasText":Z
    :goto_1
    if-eqz p2, :cond_1

    .line 1372
    if-eqz v1, :cond_6

    .line 1373
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1375
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1383
    :cond_1
    :goto_2
    if-eqz p3, :cond_3

    .line 1384
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1385
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v0, 0x0

    .line 1386
    .local v0, "bottomMargin":I
    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 1388
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # invokes: Landroid/support/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v6, v7}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;I)I

    move-result v0

    .line 1390
    :cond_2
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_3

    .line 1391
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1392
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 1396
    .end local v0    # "bottomMargin":I
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1397
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1402
    :goto_3
    return-void

    .line 1364
    .end local v1    # "hasText":Z
    :cond_4
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1365
    invoke-virtual {p3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    move v1, v5

    .line 1370
    goto :goto_1

    .line 1378
    .restart local v1    # "hasText":Z
    :cond_6
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1399
    :cond_7
    invoke-virtual {p0, v8}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1400
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_3
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1215
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1216
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1223
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1406
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 1407
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1409
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1410
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v5

    .line 1411
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getHeight()I

    move-result v2

    .line 1412
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1414
    .local v4, "screenWidth":I
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1417
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1420
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1421
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 15
    .param p1, "origWidthMeasureSpec"    # I
    .param p2, "origHeightMeasureSpec"    # I

    .prologue
    .line 1228
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1229
    .local v9, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1230
    .local v8, "specWidthMode":I
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # invokes: Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I
    invoke-static {v13}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    .line 1233
    .local v6, "maxWidth":I
    move/from16 v3, p2

    .line 1235
    .local v3, "heightMeasureSpec":I
    if-lez v6, :cond_6

    if-eqz v8, :cond_0

    if-le v9, v6, :cond_6

    .line 1239
    :cond_0
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I
    invoke-static {v13}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v13

    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1246
    .local v12, "widthMeasureSpec":I
    :goto_0
    invoke-super {p0, v12, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1249
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_5

    .line 1250
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1251
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabTextSize:F
    invoke-static {v13}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)F

    move-result v10

    .line 1252
    .local v10, "textSize":F
    iget v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1254
    .local v5, "maxLines":I
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v13, :cond_7

    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_7

    .line 1256
    const/4 v5, 0x1

    .line 1262
    :cond_1
    :goto_1
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 1263
    .local v2, "curTextSize":F
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 1264
    .local v0, "curLineCount":I
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    .line 1266
    .local v1, "curMaxLines":I
    cmpl-float v13, v10, v2

    if-nez v13, :cond_2

    if-ltz v1, :cond_5

    if-eq v5, v1, :cond_5

    .line 1268
    :cond_2
    const/4 v11, 0x1

    .line 1270
    .local v11, "updateTextView":Z
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mMode:I
    invoke-static {v13}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    cmpl-float v13, v10, v2

    if-lez v13, :cond_4

    const/4 v13, 0x1

    if-ne v0, v13, :cond_4

    .line 1275
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1276
    .local v4, "layout":Landroid/text/Layout;
    if-eqz v4, :cond_3

    const/4 v13, 0x0

    invoke-direct {p0, v4, v13, v10}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v13

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 1278
    :cond_3
    const/4 v11, 0x0

    .line 1282
    .end local v4    # "layout":Landroid/text/Layout;
    :cond_4
    if-eqz v11, :cond_5

    .line 1283
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1284
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1285
    invoke-super {p0, v12, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1289
    .end local v0    # "curLineCount":I
    .end local v1    # "curMaxLines":I
    .end local v2    # "curTextSize":F
    .end local v5    # "maxLines":I
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v10    # "textSize":F
    .end local v11    # "updateTextView":Z
    :cond_5
    return-void

    .line 1242
    .end local v12    # "widthMeasureSpec":I
    :cond_6
    move/from16 v12, p1

    .restart local v12    # "widthMeasureSpec":I
    goto :goto_0

    .line 1257
    .restart local v5    # "maxLines":I
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v10    # "textSize":F
    :cond_7
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_1

    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLineCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 1259
    iget-object v13, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F
    invoke-static {v13}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)F

    move-result v10

    goto :goto_1
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1197
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1198
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1199
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1201
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1204
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1205
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1208
    :cond_1
    return-void

    .line 1196
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1292
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1293
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1294
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 1295
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1296
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 1297
    if-eqz v1, :cond_0

    .line 1298
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1300
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1302
    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1303
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 1304
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    :cond_2
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 1307
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    :cond_3
    const v5, 0x1020014

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1312
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 1313
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1315
    :cond_4
    const v5, 0x1020006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1326
    :goto_0
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v5, :cond_b

    .line 1328
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    .line 1329
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1331
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v7}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1332
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1334
    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_5
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_6

    .line 1335
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Landroid/support/design/R$layout;->design_layout_tab_text:I

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1337
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1338
    iput-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1339
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1341
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I
    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1342
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1343
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    # getter for: Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1345
    :cond_7
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1352
    :cond_8
    :goto_1
    return-void

    .line 1318
    :cond_9
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 1319
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1320
    iput-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1322
    :cond_a
    iput-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1323
    iput-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_0

    .line 1348
    :cond_b
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v5, :cond_c

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 1349
    :cond_c
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
