.class Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1990
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/AppCompatDelegateImplV7$1;

    .prologue
    .line 1960
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1960
    invoke-static {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x1

    .line 1979
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;-><init>()V

    .line 1980
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    .line 1981
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    .line 1983
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 1984
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1987
    :cond_0
    return-object v0

    .line 1981
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1970
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1976
    :cond_0
    return-void

    .line 1971
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
