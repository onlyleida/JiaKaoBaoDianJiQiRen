.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;
.super Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Down:I = 0x1

.field public static final Up:I


# instance fields
.field public on:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;->on:I

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Laba:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;

    .line 4
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;->on:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;->on:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;->on:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
