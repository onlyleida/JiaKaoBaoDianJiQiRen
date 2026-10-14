.class public abstract Lcom/iflytek/cloud/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/f/b$a;
    }
.end annotation


# static fields
.field public static final TAG_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final TAG_SID:Ljava/lang/String; = "sid"


# instance fields
.field public mClientID:[C

.field public mSessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract sessionEnd(Ljava/lang/String;)V
.end method
