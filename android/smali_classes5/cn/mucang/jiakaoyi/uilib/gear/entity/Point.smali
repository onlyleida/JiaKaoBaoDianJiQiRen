.class public final Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;",
        "Ljava/io/Serializable;",
        "()V",
        "dp",
        "",
        "getDp",
        "()Ljava/lang/Float;",
        "setDp",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "dr",
        "getDr",
        "setDr",
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
.field private dp:Ljava/lang/Float;

.field private dr:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDp()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->dp:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDr()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->dr:Ljava/lang/Float;

    return-object v0
.end method

.method public final setDp(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->dp:Ljava/lang/Float;

    return-void
.end method

.method public final setDr(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;->dr:Ljava/lang/Float;

    return-void
.end method
