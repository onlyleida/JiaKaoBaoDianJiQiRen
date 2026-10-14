.class public final enum Lcom/noober/background/common/MultiSelector;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noober/background/common/MultiSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Activated:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Checkable:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Checked:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Enabled:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Focused:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Hovered:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Pressed:Lcom/noober/background/common/MultiSelector;

.field public static final enum State_Selected:Lcom/noober/background/common/MultiSelector;


# instance fields
.field public id:I

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/noober/background/common/MultiSelector;

    const-string v1, "State_Checkable"

    const/4 v2, 0x0

    const-string v3, "state_checkable"

    const v4, 0x101009f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/noober/background/common/MultiSelector;->State_Checkable:Lcom/noober/background/common/MultiSelector;

    .line 2
    new-instance v1, Lcom/noober/background/common/MultiSelector;

    const-string v3, "State_Checked"

    const/4 v4, 0x1

    const-string v5, "state_checked"

    const v6, 0x10100a0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/noober/background/common/MultiSelector;->State_Checked:Lcom/noober/background/common/MultiSelector;

    .line 3
    new-instance v3, Lcom/noober/background/common/MultiSelector;

    const-string v5, "State_Enabled"

    const/4 v6, 0x2

    const-string v7, "state_enabled"

    const v8, 0x101009e

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/noober/background/common/MultiSelector;->State_Enabled:Lcom/noober/background/common/MultiSelector;

    .line 4
    new-instance v5, Lcom/noober/background/common/MultiSelector;

    const-string v7, "State_Selected"

    const/4 v8, 0x3

    const-string v9, "state_selected"

    const v10, 0x10100a1

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/noober/background/common/MultiSelector;->State_Selected:Lcom/noober/background/common/MultiSelector;

    .line 5
    new-instance v7, Lcom/noober/background/common/MultiSelector;

    const-string v9, "State_Pressed"

    const/4 v10, 0x4

    const-string v11, "state_pressed"

    const v12, 0x10100a7

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/noober/background/common/MultiSelector;->State_Pressed:Lcom/noober/background/common/MultiSelector;

    .line 6
    new-instance v9, Lcom/noober/background/common/MultiSelector;

    const-string v11, "State_Focused"

    const/4 v12, 0x5

    const-string v13, "state_focused"

    const v14, 0x101009c

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/noober/background/common/MultiSelector;->State_Focused:Lcom/noober/background/common/MultiSelector;

    .line 7
    new-instance v11, Lcom/noober/background/common/MultiSelector;

    const-string v13, "State_Hovered"

    const/4 v14, 0x6

    const-string v15, "state_hovered"

    const v12, 0x1010367

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/noober/background/common/MultiSelector;->State_Hovered:Lcom/noober/background/common/MultiSelector;

    .line 8
    new-instance v12, Lcom/noober/background/common/MultiSelector;

    const-string v13, "State_Activated"

    const/4 v15, 0x7

    const-string v14, "state_activated"

    const v10, 0x10102fe

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/noober/background/common/MultiSelector;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/noober/background/common/MultiSelector;->State_Activated:Lcom/noober/background/common/MultiSelector;

    const/16 v10, 0x8

    new-array v10, v10, [Lcom/noober/background/common/MultiSelector;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    aput-object v12, v10, v15

    .line 9
    sput-object v10, Lcom/noober/background/common/MultiSelector;->$VALUES:[Lcom/noober/background/common/MultiSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/noober/background/common/MultiSelector;->value:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/noober/background/common/MultiSelector;->id:I

    return-void
.end method

.method public static getMultiAttr(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "state_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "state_checkable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "state_hovered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "state_activated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "state_checked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "state_pressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "state_focused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "state_selected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Enabled:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Checkable:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Hovered:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Activated:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Checked:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Pressed:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Focused:Lcom/noober/background/common/MultiSelector;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/noober/background/common/MultiSelector;->State_Selected:Lcom/noober/background/common/MultiSelector;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66aa0d77 -> :sswitch_7
        -0x60572a37 -> :sswitch_6
        -0x4a1f098c -> :sswitch_5
        -0xae7e607 -> :sswitch_4
        0x3dec7a3 -> :sswitch_3
        0xa79c12d -> :sswitch_2
        0xf77b434 -> :sswitch_1
        0x68e8d593 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;
    .locals 1

    .line 1
    const-class v0, Lcom/noober/background/common/MultiSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noober/background/common/MultiSelector;

    return-object p0
.end method

.method public static values()[Lcom/noober/background/common/MultiSelector;
    .locals 1

    .line 1
    sget-object v0, Lcom/noober/background/common/MultiSelector;->$VALUES:[Lcom/noober/background/common/MultiSelector;

    invoke-virtual {v0}, [Lcom/noober/background/common/MultiSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noober/background/common/MultiSelector;

    return-object v0
.end method
