.class Landroid/support/v7/app/TwilightManager$TwilightState;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/TwilightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightState"
.end annotation


# instance fields
.field isNight:Z

.field nextUpdate:J

.field todaySunrise:J

.field todaySunset:J

.field tomorrowSunrise:J

.field yesterdaySunset:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/TwilightManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/TwilightManager$1;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>()V

    return-void
.end method
