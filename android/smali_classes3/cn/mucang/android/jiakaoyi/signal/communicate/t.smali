.class public Lcn/mucang/android/jiakaoyi/signal/communicate/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(B[B)[B
    .locals 4

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x9

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    const/16 v3, -0x5b

    .line 3
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    const/16 v3, 0x5a

    .line 4
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    int-to-byte v0, v0

    .line 5
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 6
    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 7
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 9
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 10
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 11
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/CRCUtil;->a([B)I

    move-result p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u7684crc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "debugCrc"

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    const/16 p0, -0x3d

    .line 14
    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 15
    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method
