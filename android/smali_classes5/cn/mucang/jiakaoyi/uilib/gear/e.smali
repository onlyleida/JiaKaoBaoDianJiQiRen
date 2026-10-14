.class public final Lcn/mucang/jiakaoyi/uilib/gear/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/gear/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/gear/GearDataConverter;",
        "",
        "()V",
        "Companion",
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


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    return-void
.end method

.method public static final a(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)[B
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->c(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)[B

    move-result-object p0

    return-object p0
.end method
