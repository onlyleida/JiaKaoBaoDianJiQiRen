.class final Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/login/face/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u001a\u0010\u0008\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\n\"\u0004\u0008\u0017\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck$Statistic;",
        "",
        "blurLimit",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "",
        "name",
        "",
        "(Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;Ljava/lang/String;)V",
        "blurCount",
        "getBlurCount",
        "()I",
        "setBlurCount",
        "(I)V",
        "blurCountMap",
        "",
        "getBlurCountMap",
        "()[I",
        "setBlurCountMap",
        "([I)V",
        "discardRat",
        "",
        "nonBlurCount",
        "getNonBlurCount",
        "setNonBlurCount",
        "statistic",
        "",
        "isBlur",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:[I

.field private d:I

.field private e:I

.field private final f:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/utils/r0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "blurLimit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->b:Ljava/lang/String;

    const/16 p1, 0x65

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    const p1, 0x3e4ccccd    # 0.2f

    .line 3
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->f:F

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    return-object v0
.end method

.method public final b(Z)V
    .locals 10

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    add-int v2, v0, v1

    const/16 v3, 0x65

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    if-le v2, v6, :cond_3

    int-to-float v2, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->f:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\u6a21\u7cca\u5360\u6bd4\u5f88\u9ad8\uff0c\u964d\u4f4e\u9600\u503c\u3002blurCount\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cnonBlurCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    invoke-static {v0}, Lkotlin/collections/k;->Z([I)I

    move-result v0

    invoke-static {v0, v4}, Lkotlin/a0/d;->b(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v2, 0x1

    .line 7
    iget-object v8, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    aget v8, v8, v2

    add-int/2addr v6, v8

    int-to-float v8, v6

    int-to-float v9, v0

    div-float/2addr v8, v9

    .line 8
    iget v9, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->f:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 10
    iput v5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    .line 11
    iput v5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    new-array v0, v3, [I

    .line 12
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\u91cd\u65b0\u8ba1\u7b97\u7684\u6a21\u7cca\u65b0\u9600\u503c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-le v7, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v7

    goto :goto_1

    .line 14
    :cond_3
    :goto_2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    add-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_4

    .line 15
    iput v5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    .line 16
    iput v5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    new-array v0, v3, [I

    .line 17
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->c:[I

    :cond_4
    if-eqz p1, :cond_5

    .line 18
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->d:I

    goto :goto_3

    .line 19
    :cond_5
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->e:I

    :goto_3
    return-void
.end method
