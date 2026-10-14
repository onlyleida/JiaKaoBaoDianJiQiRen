.class public Lcn/mucang/android/jiakaoyi/k3collect/collision/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)Z
    .locals 1

    const/16 v0, 0x80

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x9

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p0

    return p0
.end method

.method public static b(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoneIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JudgeLineTypeUtil"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TurnLightIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FootBrakeIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-static {p0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(ZZZ)I
    .locals 4

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 1
    invoke-static {v3, v1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    .line 2
    invoke-static {p0, v0, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    .line 3
    invoke-static {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    .line 4
    invoke-static {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {v3, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result v1

    .line 6
    invoke-static {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    .line 7
    invoke-static {p0, v2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    const/16 p1, 0xc

    .line 8
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->d(IIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static d(IIZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result p0

    return p0
.end method
