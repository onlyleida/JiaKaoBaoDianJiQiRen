.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;
.super Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public distance:I

.field public ids:[I

.field public on:Z

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->KeepLight:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    return-void
.end method

.method public constructor <init>([IZII)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->KeepLight:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->type:I

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->ids:[I

    .line 10
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    .line 11
    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    .line 12
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->on:Z

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
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;

    .line 4
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->on:Z

    iget-boolean v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->on:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->ids:[I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->ids:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->on:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->ids:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
