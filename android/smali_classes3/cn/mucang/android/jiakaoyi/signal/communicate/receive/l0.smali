.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->b:I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->c:I

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->d:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverRtcmAckInfo{packageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
