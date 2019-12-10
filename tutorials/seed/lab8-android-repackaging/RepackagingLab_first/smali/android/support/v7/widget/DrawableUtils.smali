.class Landroid/support/v7/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 39
    :try_start_0
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 12
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, 0x0

    .line 53
    sget-object v8, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v8, :cond_1

    .line 57
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v10, "getOpticalInsets"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 61
    .local v3, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 63
    .local v5, "insets":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 65
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v7, "result":Landroid/graphics/Rect;
    sget-object v8, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, v0, v4

    .line 68
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v8, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 67
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :sswitch_0
    const-string v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v9

    goto :goto_1

    :sswitch_1
    const-string v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 85
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v4    # "i$":I
    .end local v5    # "insets":Ljava/lang/Object;
    .end local v6    # "len$":I
    .end local v7    # "result":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "DrawableUtils"

    const-string v9, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v7, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_2
    return-object v7

    .line 73
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "i$":I
    .restart local v5    # "insets":Ljava/lang/Object;
    .restart local v6    # "len$":I
    .restart local v7    # "result":Landroid/graphics/Rect;
    :pswitch_1
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 76
    :pswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 79
    :pswitch_3
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
