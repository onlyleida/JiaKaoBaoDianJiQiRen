.class public Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoConfirm:Z

.field private buttonConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private closeable:Z

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->closeable:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->autoConfirm:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;",
            ">;ZZ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->closeable:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->autoConfirm:Z

    .line 7
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->buttonConfig:Ljava/util/List;

    .line 8
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->closeable:Z

    .line 9
    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->autoConfirm:Z

    return-void
.end method


# virtual methods
.method public getButtonConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->buttonConfig:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoConfirm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->autoConfirm:Z

    return v0
.end method

.method public isCloseable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->closeable:Z

    return v0
.end method

.method public setAutoConfirm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->autoConfirm:Z

    return-void
.end method

.method public setButtonConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->buttonConfig:Ljava/util/List;

    return-void
.end method

.method public setCloseable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->closeable:Z

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->imageUrl:Ljava/lang/String;

    return-void
.end method
