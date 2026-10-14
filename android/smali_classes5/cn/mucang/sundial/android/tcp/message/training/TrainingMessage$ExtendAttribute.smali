.class public Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendAttribute"
.end annotation


# static fields
.field public static final SHA_1:Ljava/lang/String; = "SHA-1"

.field public static final SHA_256:Ljava/lang/String; = "SHA-256"


# instance fields
.field private digestType:Ljava/lang/String;

.field private needReply:Z

.field private realtimeMessage:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->realtimeMessage:Z

    .line 4
    iput-boolean p2, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->needReply:Z

    .line 5
    iput-object p3, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    return-void
.end method

.method public static from(I)Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->realtimeMessage:Z

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    :cond_1
    iput-boolean v2, v0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->needReply:Z

    ushr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "SHA-256"

    .line 4
    iput-object p0, v0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p0, "SHA-1"

    .line 5
    iput-object p0, v0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    .line 6
    iput-object p0, v0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getDigestType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->realtimeMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->needReply:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "SHA-1"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    const-string v2, "SHA-256"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    :goto_1
    return v0
.end method

.method public isNeedReply()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->needReply:Z

    return v0
.end method

.method public isRealtimeMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->realtimeMessage:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendAttribute{realtimeMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->realtimeMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needReply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->needReply:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", digestType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->digestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
