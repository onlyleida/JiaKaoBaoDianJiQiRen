.class public Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public path:Ljava/lang/String;

.field public type:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;->type:I

    .line 4
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;->version:I

    .line 5
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;->path:Ljava/lang/String;

    return-void
.end method
