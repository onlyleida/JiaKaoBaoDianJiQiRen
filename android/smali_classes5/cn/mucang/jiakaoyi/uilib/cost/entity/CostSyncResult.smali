.class public Lcn/mucang/jiakaoyi/uilib/cost/entity/CostSyncResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public finishMessage:Ljava/lang/String;

.field public finished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinishMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostSyncResult;->finishMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostSyncResult;->finished:Z

    return v0
.end method

.method public setFinishMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostSyncResult;->finishMessage:Ljava/lang/String;

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostSyncResult;->finished:Z

    return-void
.end method
