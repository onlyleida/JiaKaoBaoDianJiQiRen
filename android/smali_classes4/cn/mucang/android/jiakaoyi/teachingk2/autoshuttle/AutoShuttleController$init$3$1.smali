.class final Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->m(Lcn/mucang/jiakaoyi/uilib/socket/model/AutoShuttleGetDisModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "length",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$init$3$1;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 4

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a()J

    move-result-wide v0

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/socket/u;->e(JJ)Z

    return-void
.end method
