.class public final synthetic Lio/github/aakira/napier/DebugAntilog$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/github/aakira/napier/Napier$Level;->values()[Lio/github/aakira/napier/Napier$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/github/aakira/napier/DebugAntilog$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lio/github/aakira/napier/Napier$Level;->VERBOSE:Lio/github/aakira/napier/Napier$Level;

    invoke-virtual {v1}, Lio/github/aakira/napier/Napier$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lio/github/aakira/napier/Napier$Level;->DEBUG:Lio/github/aakira/napier/Napier$Level;

    invoke-virtual {v1}, Lio/github/aakira/napier/Napier$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lio/github/aakira/napier/Napier$Level;->INFO:Lio/github/aakira/napier/Napier$Level;

    invoke-virtual {v1}, Lio/github/aakira/napier/Napier$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lio/github/aakira/napier/Napier$Level;->WARNING:Lio/github/aakira/napier/Napier$Level;

    invoke-virtual {v1}, Lio/github/aakira/napier/Napier$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lio/github/aakira/napier/Napier$Level;->ERROR:Lio/github/aakira/napier/Napier$Level;

    invoke-virtual {v1}, Lio/github/aakira/napier/Napier$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lio/github/aakira/napier/Napier$Level;->ASSERT:Lio/github/aakira/napier/Napier$Level;

    invoke-virtual {v1}, Lio/github/aakira/napier/Napier$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method
