.class public Lcn/mucang/android/jiakaoyi/k3collect/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->values()[Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_5

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result v4

    if-ne v4, p0, :cond_4

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p0, :cond_3

    if-eqz p1, :cond_2

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_DASH:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->SHUANG_HUANG_FULL:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    return-object p0

    :cond_3
    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_5
    sget-object p0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->FULL_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    return-object p0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;
    .locals 1

    .line 1
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isDashed:Z

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineType()I

    move-result p0

    return p0
.end method
