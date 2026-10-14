.class public Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;->type:I

    return v0
.end method
