.class public Landroid/support/v7/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Landroid/support/v7/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    .line 282
    iput p2, p0, Landroid/support/v7/app/AlertDialog$Builder;->mTheme:I

    .line 283
    return-void
.end method


# virtual methods
.method public create()Landroid/support/v7/app/AlertDialog;
    .locals 4

    .prologue
    .line 882
    new-instance v0, Landroid/support/v7/app/AlertDialog;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 883
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    # getter for: Landroid/support/v7/app/AlertDialog;->mAlert:Landroid/support/v7/app/AlertController;
    invoke-static {v0}, Landroid/support/v7/app/AlertDialog;->access$000(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertController$AlertParams;->apply(Landroid/support/v7/app/AlertController;)V

    .line 884
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 885
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 886
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 888
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 890
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 893
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 555
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    .line 476
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 573
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 575
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 330
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 362
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 372
    return-object p0
.end method

.method public setIconAttribute(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 385
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 386
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 387
    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 388
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 862
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 863
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 527
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 528
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 540
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 541
    return-object p0
.end method

.method public setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 340
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 350
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 601
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 602
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 603
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 604
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 605
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 664
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p4, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 665
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 666
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 668
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 631
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 632
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 633
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 634
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 426
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 427
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 439
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 440
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 452
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 465
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 466
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 495
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 505
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 788
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 515
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 400
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 413
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 414
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 870
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 871
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 690
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 691
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 692
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 693
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 694
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 718
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 719
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p4, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 720
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 721
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 723
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 771
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 772
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 773
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 774
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 775
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 745
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 746
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 747
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 748
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 749
    return-object p0
.end method

.method public setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 305
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 315
    return-object p0
.end method

.method public setView(I)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 800
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 801
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 802
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 803
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 815
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 816
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 817
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 845
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 846
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 847
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p2, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 848
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p3, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p4, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 850
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog$Builder;->P:Landroid/support/v7/app/AlertController$AlertParams;

    iput p5, v0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 851
    return-object p0
.end method

.method public show()Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 902
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 903
    return-object v0
.end method
