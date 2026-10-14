.class public Lcom/alivc/live/utils/HttpClientTool;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DoAndroidHttpPostRequest(Ljava/lang/String;[Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    new-instance v1, Lcom/alivc/live/utils/HttpClientHelper;

    invoke-direct {v1, p0}, Lcom/alivc/live/utils/HttpClientHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alivc/live/utils/HttpClientHelper;->setVerifyCert()V

    invoke-virtual {v1, p1}, Lcom/alivc/live/utils/HttpClientHelper;->setCustomHeaders([Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/alivc/live/utils/HttpClientHelper;->doPost([B)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/alivc/live/utils/HttpClientHelper;->getResponse()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
