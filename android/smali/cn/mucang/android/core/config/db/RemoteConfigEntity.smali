.class public Lcn/mucang/android/core/config/db/RemoteConfigEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private remoteKey:Ljava/lang/String;

.field private remoteKeyCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoteKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->remoteKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteKeyCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->remoteKeyCount:I

    return v0
.end method

.method public setRemoteKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->remoteKey:Ljava/lang/String;

    return-void
.end method

.method public setRemoteKeyCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->remoteKeyCount:I

    return-void
.end method
