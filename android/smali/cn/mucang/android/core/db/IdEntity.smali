.class public Lcn/mucang/android/core/db/IdEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x13352a6L


# instance fields
.field protected _id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/core/db/IdEntity;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    iget-object p1, p1, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/MiscUtils;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/16 v1, 0x9b

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/db/IdEntity;->_id:Ljava/lang/Long;

    return-void
.end method
