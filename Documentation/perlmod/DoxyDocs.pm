$doxydocs=
{
  classes => [
    {
      name => 'CombatManager',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'CombatManager.h'
      },
      all_members => [
        {
          name => '_RESULTS',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => '_TURN',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'ENEMY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'ENEMY_DEAD',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'Fight',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'CombatManager'
        },
        {
          name => 'HitEnemy',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'HitPlayer',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'PLAYER',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'PLAYER_DEAD',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'PrintStatements',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'RESULTS',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'SetTurn',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'sleep_timer',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'SleepTimer',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'STILL_ALIVE',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'TURN',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        },
        {
          name => 'UpdateResults',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'CombatManager'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Fight',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'e',
                type => 'Enemy &'
              }
            ]
          }
        ]
      },
      private_typedefs => {
        members => [
          {
            kind => 'enum',
            name => 'TURN',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'PLAYER',
                brief => {},
                detailed => {}
              },
              {
                name => 'ENEMY',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enum',
            name => 'RESULTS',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'PLAYER_DEAD',
                brief => {},
                detailed => {}
              },
              {
                name => 'ENEMY_DEAD',
                brief => {},
                detailed => {}
              },
              {
                name => 'STILL_ALIVE',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enumvalue',
            name => 'PLAYER',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'ENEMY',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'PLAYER_DEAD',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'ENEMY_DEAD',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'STILL_ALIVE',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'SetTurn',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'desired_turn',
                type => 'TURN'
              }
            ]
          },
          {
            kind => 'function',
            name => 'HitEnemy',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'e',
                type => 'Enemy &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'HitPlayer',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'e',
                type => 'Enemy &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'PrintStatements',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'e',
                type => 'Enemy &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'statements',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'UpdateResults',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'e',
                type => 'Enemy &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SleepTimer',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'sleep_timer',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 5000'
          },
          {
            kind => 'variable',
            name => '_TURN',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TURN',
            initializer => '= ENEMY'
          },
          {
            kind => 'variable',
            name => '_RESULTS',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'RESULTS',
            initializer => '= STILL_ALIVE'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsoleRendering',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'ConsoleRendering.h'
      },
      all_members => [
        {
          name => 'Create_Inventory_GUI',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Create_Stats_GUI',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Print_Actions',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Print_Actions_GUI',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Print_Inventory',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Print_Stats',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Render_Actions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Render_All',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Render_GUI',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Render_Inventory',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleRendering'
        },
        {
          name => 'Render_Stats',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleRendering'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Render_All',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Render_GUI',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Render_Stats',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Render_Inventory',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Render_Actions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'Print_Actions_GUI',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Print_Stats',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Print_Inventory',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Print_Actions',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'action',
                type => 'char'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Create_Stats_GUI',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'inventory',
                type => 'std::string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Create_Inventory_GUI',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'inventory',
                type => 'std::string &'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsoleWindowManager',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'ConsoleWindowManager.h'
      },
      all_members => [
        {
          name => 'BLACK',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'BlankScreen',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'BLUE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'COLORS',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'CYAN',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'DARK_BLUE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'DARK_GREEN',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'DARK_RED',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'GetConsoleHandle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'GetConsoleHandleWindow',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'GetDesktopHandleWindow',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'GRAY',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'GREEN',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'HANDLE_CONSOLE',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'HANDLE_WINDOW_CONSOLE',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'HANDLE_WINDOW_DESKTOP',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'HideConsoleCursor',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'LIGHT_BLUE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'LIGHT_GRAY',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'MAGENTA',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'ORANGE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'PINK',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'RED',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'RepositionWindow',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'SetConsoleWindowColor',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'SetConsoleWindowRandomColor',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'SetText',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'SetWindowDisplay',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'WHITE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        },
        {
          name => 'YELLOW',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ConsoleWindowManager'
        }
      ],
      public_typedefs => {
        members => [
          {
            kind => 'enum',
            name => 'COLORS',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'BLACK',
                initializer => '= 0',
                brief => {},
                detailed => {}
              },
              {
                name => 'DARK_BLUE',
                initializer => '= 1',
                brief => {},
                detailed => {}
              },
              {
                name => 'DARK_GREEN',
                initializer => '= 2',
                brief => {},
                detailed => {}
              },
              {
                name => 'LIGHT_BLUE',
                initializer => '= 3',
                brief => {},
                detailed => {}
              },
              {
                name => 'DARK_RED',
                initializer => '= 4',
                brief => {},
                detailed => {}
              },
              {
                name => 'MAGENTA',
                initializer => '= 5',
                brief => {},
                detailed => {}
              },
              {
                name => 'ORANGE',
                initializer => '= 6',
                brief => {},
                detailed => {}
              },
              {
                name => 'LIGHT_GRAY',
                initializer => '= 7',
                brief => {},
                detailed => {}
              },
              {
                name => 'GRAY',
                initializer => '= 8',
                brief => {},
                detailed => {}
              },
              {
                name => 'BLUE',
                initializer => '= 9',
                brief => {},
                detailed => {}
              },
              {
                name => 'GREEN',
                initializer => '= 10',
                brief => {},
                detailed => {}
              },
              {
                name => 'CYAN',
                initializer => '= 11',
                brief => {},
                detailed => {}
              },
              {
                name => 'RED',
                initializer => '= 12',
                brief => {},
                detailed => {}
              },
              {
                name => 'PINK',
                initializer => '= 13',
                brief => {},
                detailed => {}
              },
              {
                name => 'YELLOW',
                initializer => '= 14',
                brief => {},
                detailed => {}
              },
              {
                name => 'WHITE',
                initializer => '= 15',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enumvalue',
            name => 'BLACK',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 0'
          },
          {
            kind => 'enumvalue',
            name => 'DARK_BLUE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 1'
          },
          {
            kind => 'enumvalue',
            name => 'DARK_GREEN',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 2'
          },
          {
            kind => 'enumvalue',
            name => 'LIGHT_BLUE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 3'
          },
          {
            kind => 'enumvalue',
            name => 'DARK_RED',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 4'
          },
          {
            kind => 'enumvalue',
            name => 'MAGENTA',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 5'
          },
          {
            kind => 'enumvalue',
            name => 'ORANGE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 6'
          },
          {
            kind => 'enumvalue',
            name => 'LIGHT_GRAY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 7'
          },
          {
            kind => 'enumvalue',
            name => 'GRAY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 8'
          },
          {
            kind => 'enumvalue',
            name => 'BLUE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 9'
          },
          {
            kind => 'enumvalue',
            name => 'GREEN',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 10'
          },
          {
            kind => 'enumvalue',
            name => 'CYAN',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 11'
          },
          {
            kind => 'enumvalue',
            name => 'RED',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 12'
          },
          {
            kind => 'enumvalue',
            name => 'PINK',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 13'
          },
          {
            kind => 'enumvalue',
            name => 'YELLOW',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 14'
          },
          {
            kind => 'enumvalue',
            name => 'WHITE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 15'
          }
        ]
      },
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'BlankScreen',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'HideConsoleCursor',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetWindowDisplay',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'int'
              },
              {
                declaration_name => 'height',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetText',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetConsoleWindowColor',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'fg',
                type => 'COLORS'
              },
              {
                declaration_name => 'bg',
                type => 'COLORS'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetConsoleWindowRandomColor',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'random_color',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RepositionWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'int'
              },
              {
                declaration_name => 'height',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetConsoleHandle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'HANDLE',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetDesktopHandleWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'HWND',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetConsoleHandleWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'HWND',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'HANDLE_CONSOLE',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'HANDLE'
          },
          {
            kind => 'variable',
            name => 'HANDLE_WINDOW_DESKTOP',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'HWND'
          },
          {
            kind => 'variable',
            name => 'HANDLE_WINDOW_CONSOLE',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'HWND'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Debug',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'Debug.h'
      },
      all_members => [
        {
          name => 'DebugControls',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Debug'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'DebugControls',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Enemy',
      kind => 'class',
      base => [
        {
          name => 'NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'Enemy.h'
      },
      all_members => [
        {
          name => 'attack_speed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'CreateNonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'Enemy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Enemy'
        },
        {
          name => 'ENEMY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GENERIC_FRIENDLY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetDamage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetX',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetY',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'health',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'name_array',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'NPC_TYPE',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'npc_x',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'npc_y',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'passive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'PrintDetails',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Enemy'
        },
        {
          name => 'SetDesiredHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetNamesArray',
          virtualness => 'virtual',
          protection => 'private',
          scope => 'Enemy'
        },
        {
          name => 'SetPassive',
          virtualness => 'virtual',
          protection => 'private',
          scope => 'Enemy'
        },
        {
          name => 'SetPosition',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetSpeed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetSymbol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'symbol',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => '~NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Enemy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'PrintDetails',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'SetNamesArray',
            virtualness => 'virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'SetNamesArray'
            }
          },
          {
            kind => 'function',
            name => 'SetPassive',
            virtualness => 'virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'SetPassive'
            }
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'GenericFriendly',
      kind => 'class',
      base => [
        {
          name => 'NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'GenericFriendly.h'
      },
      all_members => [
        {
          name => 'attack_speed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'CreateNonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'ENEMY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GENERIC_FRIENDLY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GenericFriendly',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GenericFriendly'
        },
        {
          name => 'GetDamage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetMessage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GenericFriendly'
        },
        {
          name => 'GetName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetX',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetY',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'health',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'message',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GenericFriendly'
        },
        {
          name => 'messages_array',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GenericFriendly'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'name_array',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'NPC_TYPE',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'npc_x',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'npc_y',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'passive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'PrintMessage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'GenericFriendly'
        },
        {
          name => 'SetDesiredHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetMessages',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GenericFriendly'
        },
        {
          name => 'SetName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetNamesArray',
          virtualness => 'virtual',
          protection => 'private',
          scope => 'GenericFriendly'
        },
        {
          name => 'SetPassive',
          virtualness => 'virtual',
          protection => 'private',
          scope => 'GenericFriendly'
        },
        {
          name => 'SetPosition',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetRandomMessage',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'GenericFriendly'
        },
        {
          name => 'SetSpeed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetSymbol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'symbol',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => '~NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'GenericFriendly',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'postition',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'PrintMessage',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetMessage',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'messages_array',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[20]',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'message',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'SetNamesArray',
            virtualness => 'virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'SetNamesArray'
            }
          },
          {
            kind => 'function',
            name => 'SetPassive',
            virtualness => 'virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'SetPassive'
            }
          },
          {
            kind => 'function',
            name => 'SetMessages',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetRandomMessage',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'InventoryManager',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'InventoryManager.h'
      },
      all_members => [
        {
          name => 'AddSpaceAndEnding',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'ARMOUR',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'armour_inventory',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'BLANK',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'c_health',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'c_health_potion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'c_magic_potion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'c_shield',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'c_shield_potion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'CurrentInventoryIndex',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'DropItemSelected',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'GetInventoryHeadingLocation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'highlight',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'InsertIntoInventoryManager',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'inventory_index',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'inventory_open',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'InventoryControl',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'InventoryInput',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'InventoryStart',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'item_picked_up',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'ITEM_TYPE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'on_title_screen',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'POTION',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'potion_chars',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'potion_inventory',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'RemoveFromInventoryManager',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'TRINKET',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'trinket_inventory',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'trinkets',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'UpdateInventory',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'UsePotionSelected',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'utilities',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'utility_inventory',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'WEAPON',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        },
        {
          name => 'weapon_chars',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'weapon_inventory',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'weaponsAndArmour',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'InventoryManager'
        },
        {
          name => 'WhatIsItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'InventoryManager'
        }
      ],
      public_typedefs => {
        members => [
          {
            kind => 'enum',
            name => 'ITEM_TYPE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'BLANK',
                initializer => '= 0',
                brief => {},
                detailed => {}
              },
              {
                name => 'WEAPON',
                initializer => '= 1',
                brief => {},
                detailed => {}
              },
              {
                name => 'ARMOUR',
                initializer => '= 2',
                brief => {},
                detailed => {}
              },
              {
                name => 'POTION',
                initializer => '= 3',
                brief => {},
                detailed => {}
              },
              {
                name => 'TRINKET',
                initializer => '= 4',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enumvalue',
            name => 'BLANK',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 0'
          },
          {
            kind => 'enumvalue',
            name => 'WEAPON',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 1'
          },
          {
            kind => 'enumvalue',
            name => 'ARMOUR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 2'
          },
          {
            kind => 'enumvalue',
            name => 'POTION',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 3'
          },
          {
            kind => 'enumvalue',
            name => 'TRINKET',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= 4'
          }
        ]
      },
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'InsertIntoInventoryManager',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'item',
                type => 'ITEM_TYPE'
              },
              {
                declaration_name => 'nextMove',
                type => 'char'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveFromInventoryManager',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'item',
                type => 'ITEM_TYPE'
              },
              {
                declaration_name => 'nextMove',
                type => 'char'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'InventoryStart',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'InventoryControl',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'action',
                type => 'char'
              },
              {
                declaration_name => 'r',
                type => 'ConsoleRendering &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'UsePotionSelected',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'potion',
                type => 'int'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'r',
                type => 'ConsoleRendering &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'DropItemSelected',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'type',
                type => 'int'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'r',
                type => 'ConsoleRendering &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'InventoryInput',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'r',
                type => 'ConsoleRendering &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'UpdateInventory',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetInventoryHeadingLocation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'string'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CurrentInventoryIndex',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'AddSpaceAndEnding',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'input',
                type => 'string'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'WhatIsItem',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ITEM_TYPE',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'letter',
                type => 'char'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'potion_inventory',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >',
            initializer => '{
		"HEALTH",
		"SHIELD",
		"MAGIC"
	}'
          },
          {
            kind => 'variable',
            name => 'c_health',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            initializer => '= \'h\''
          },
          {
            kind => 'variable',
            name => 'c_shield',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            initializer => '= \'s\''
          },
          {
            kind => 'variable',
            name => 'c_health_potion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            initializer => '= \'H\''
          },
          {
            kind => 'variable',
            name => 'c_shield_potion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            initializer => '= \'S\''
          },
          {
            kind => 'variable',
            name => 'c_magic_potion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            initializer => '= \'M\''
          },
          {
            kind => 'variable',
            name => 'inventory_index',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int',
            initializer => '= 1'
          },
          {
            kind => 'variable',
            name => 'inventory_open',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'utilities',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[3][2]',
            initializer => '= {
		{
			"HEALTH",
			"POTION"
		},
		{
			"MAGIC",
			"POTION"
		},
		{
			"SHIELD",
			"POTION"
		}
	}'
          },
          {
            kind => 'variable',
            name => 'weaponsAndArmour',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[3][2]',
            initializer => '= {
		{
			"DULL SWORD",
			"ONE"
		},
		{
			"DULL BRACERS",
			"ONE"
		},
		{
			"DULL HELMET",
			"ONE"
		}
	}'
          },
          {
            kind => 'variable',
            name => 'trinkets',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[2][2]',
            initializer => '= {
		{
			"GLOWING PENCHANT"
		},
		{
			"ENCHANTED PENCHANT"
		}
	}'
          },
          {
            kind => 'variable',
            name => 'potion_chars',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            arguments => '[3]',
            initializer => '= {
		\'H\',
		\'S\',
		\'M\'
	}'
          },
          {
            kind => 'variable',
            name => 'weapon_chars',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            arguments => '[3]',
            initializer => '= {
		\'/\',
		\'O\',
		\'Q\'
	}'
          },
          {
            kind => 'variable',
            name => 'highlight',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          },
          {
            kind => 'variable',
            name => 'on_title_screen',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= true'
          },
          {
            kind => 'variable',
            name => 'weapon_inventory',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'armour_inventory',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'trinket_inventory',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'utility_inventory',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'item_picked_up',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'MapManager',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'MapManager.h'
      },
      all_members => [
        {
          name => 'enemies',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'file_contents_read_in',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'file_name_end',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'file_name_start',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'FindEnemy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'FindFriendly',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'generic_friendlies',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'has_rendered_map',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'height',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'IsEmpty',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'level_index',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'loading_next_map',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'LoadMap',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'LoadNextMap',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'new_map',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'PrintMap',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MapManager'
        },
        {
          name => 'ReadMap',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MapManager'
        },
        {
          name => 'RefreshMap',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'MapManager'
        },
        {
          name => 'RenderMap',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        },
        {
          name => 'width',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'MapManager'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'LoadNextMap',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RenderMap',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsEmpty',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'LoadMap',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'input',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'FindEnemy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'FindFriendly',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'level_index',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int',
            initializer => '= 1'
          },
          {
            kind => 'variable',
            name => 'width',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'height',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'generic_friendlies',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< GenericFriendly >'
          },
          {
            kind => 'variable',
            name => 'enemies',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< Enemy >'
          },
          {
            kind => 'variable',
            name => 'new_map',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char *',
            initializer => '= nullptr'
          },
          {
            kind => 'variable',
            name => 'has_rendered_map',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          },
          {
            kind => 'variable',
            name => 'loading_next_map',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          },
          {
            kind => 'variable',
            name => 'file_name_start',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            initializer => '= "MAP_"'
          },
          {
            kind => 'variable',
            name => 'file_name_end',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            initializer => '= ".txt"'
          },
          {
            kind => 'variable',
            name => 'file_contents_read_in',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'ReadMap',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'PrintMap',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RefreshMap',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'NonPlayableCharacter',
      kind => 'class',
      derived => [
        {
          name => 'Enemy',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'GenericFriendly',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'NonPlayableCharacter.h'
      },
      all_members => [
        {
          name => 'attack_speed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'CreateNonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'ENEMY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GENERIC_FRIENDLY',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetDamage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetX',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'GetY',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'health',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'name_array',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'NPC_TYPE',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'npc_x',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'npc_y',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'passive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetDesiredHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetNamesArray',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetPassive',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetPosition',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetSpeed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'SetSymbol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        },
        {
          name => 'symbol',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'NonPlayableCharacter'
        },
        {
          name => '~NonPlayableCharacter',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'NonPlayableCharacter'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'NonPlayableCharacter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~NonPlayableCharacter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetNamesArray',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplemented_by => [
              {
                name => 'SetNamesArray'
              },
              {
                name => 'SetNamesArray'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetPassive',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplemented_by => [
              {
                name => 'SetPassive'
              },
              {
                name => 'SetPassive'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetName',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetStrength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetHealth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetSpeed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetSymbol',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'x',
                type => 'int'
              },
              {
                declaration_name => 'y',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetDesiredHealth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetName',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetHealth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetDamage',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetX',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetY',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'CreateNonPlayableCharacter',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'passive',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'name',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'name_array',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[20]'
          },
          {
            kind => 'variable',
            name => 'strength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          }
        ]
      },
      private_typedefs => {
        members => [
          {
            kind => 'enum',
            name => 'NPC_TYPE',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'ENEMY',
                initializer => '= \'E\'',
                brief => {},
                detailed => {}
              },
              {
                name => 'GENERIC_FRIENDLY',
                initializer => '= \'N\'',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enumvalue',
            name => 'ENEMY',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= \'E\''
          },
          {
            kind => 'enumvalue',
            name => 'GENERIC_FRIENDLY',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@',
            initializer => '= \'N\''
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'symbol',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char'
          },
          {
            kind => 'variable',
            name => 'health',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          },
          {
            kind => 'variable',
            name => 'attack_speed',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          },
          {
            kind => 'variable',
            name => 'npc_x',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          },
          {
            kind => 'variable',
            name => 'npc_y',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Player',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'Player.h'
      },
      all_members => [
        {
          name => 'BlankPosition',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        },
        {
          name => 'c_player',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        },
        {
          name => 'damage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'end_game',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'EnterCombatMode',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        },
        {
          name => 'EnterMessageMode',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        },
        {
          name => 'GetDamage',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'GetHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'health',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'health_potions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'in_combat',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'magic',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'magic_potions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'max_potions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'max_stats',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'player_position_x',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'player_position_x_new',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'player_position_y',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'player_position_y_new',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'PlayerCollisions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'PlayerCollisionsChecks',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        },
        {
          name => 'PlayerInput',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'RenderPlayer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'SetDesiredHealth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'shield',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'shield_potions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Player'
        },
        {
          name => 'waiting_for_choice',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        },
        {
          name => 'waiting_to_start_combat',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Player'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'GetDamage',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GetHealth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetDesiredHealth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RenderPlayer',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'PlayerCollisions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'PlayerInput',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'i',
                type => 'InventoryManager &'
              },
              {
                declaration_name => 'c',
                type => 'ConsoleWindowManager &'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              },
              {
                declaration_name => 'r',
                type => 'ConsoleRendering &'
              },
              {
                declaration_name => 'ui',
                type => 'UserInterfaceManager &'
              },
              {
                declaration_name => 'cm',
                type => 'CombatManager &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'player_position_x',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 20'
          },
          {
            kind => 'variable',
            name => 'player_position_y',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 10'
          },
          {
            kind => 'variable',
            name => 'player_position_x_new',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= player_position_x'
          },
          {
            kind => 'variable',
            name => 'player_position_y_new',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= player_position_y'
          },
          {
            kind => 'variable',
            name => 'end_game',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool'
          },
          {
            kind => 'variable',
            name => 'in_combat',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          },
          {
            kind => 'variable',
            name => 'damage',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 10'
          },
          {
            kind => 'variable',
            name => 'shield',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 5'
          },
          {
            kind => 'variable',
            name => 'health',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 50'
          },
          {
            kind => 'variable',
            name => 'magic',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 9'
          },
          {
            kind => 'variable',
            name => 'max_stats',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 10'
          },
          {
            kind => 'variable',
            name => 'health_potions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'shield_potions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'magic_potions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'max_potions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 10'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'PlayerCollisionsChecks',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'item',
                type => 'int'
              },
              {
                declaration_name => 'item_max',
                type => 'int'
              },
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'BlankPosition',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'p',
                type => 'Player &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'EnterCombatMode',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'e',
                type => 'Enemy &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'EnterMessageMode',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'm',
                type => 'MapManager &'
              },
              {
                declaration_name => 'f',
                type => 'GenericFriendly &'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'c_player',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const char',
            initializer => '= \'P\''
          },
          {
            kind => 'variable',
            name => 'waiting_to_start_combat',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          },
          {
            kind => 'variable',
            name => 'waiting_for_choice',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Potion',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'Potion.h'
      },
      all_members => [
        {
          name => 'CreateNewPotion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'GenerateRandomNumber',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'HEALTH',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'MAGIC',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'Potion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'POTION_NAME_CHOICES',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'POTION_TYPE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'POTION_TYPE_SELECTED',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'SetPotionName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'SetPotionType',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'SHIELD',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => 'SYMBOL',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Potion'
        },
        {
          name => 'weight',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        },
        {
          name => '~Potion',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Potion'
        }
      ],
      public_typedefs => {
        members => [
          {
            kind => 'enum',
            name => 'POTION_TYPE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'HEALTH',
                brief => {},
                detailed => {}
              },
              {
                name => 'MAGIC',
                brief => {},
                detailed => {}
              },
              {
                name => 'SHIELD',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enumvalue',
            name => 'HEALTH',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'MAGIC',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'SHIELD',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          }
        ]
      },
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Potion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Potion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GenerateRandomNumber',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetPotionType',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'POTION_TYPE',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'potion_choice',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetPotionName',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'potion_name_index',
                type => 'int'
              },
              {
                declaration_name => 'POTION_TYPE_SELECTED',
                type => 'POTION_TYPE'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetStrength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CreateNewPotion',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'POTION_NAME_CHOICES',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[3][6]',
            initializer => '{
		{
			"Potion of Minor Healing",
			"Potion of Small Healing",
			"Potion of Plentiful Healing",
			"Potion of Vigorous Healing",
			"Potion of Extreme Healing",
			"Potion of Ultimate Healing"
		},
		{
			"Potion of Minor Magicka",
			"Potion of Small Magicka",
			"Potion of Plentiful Magicka",
			"Potion of Vigorous Magicka",
			"Potion of Extreme Magicka",
			"Potion of Ultimate Magicka"
		},
		{
			"Potion of Minor Magicka",
			"Potion of Small Magicka",
			"Potion of Plentiful Magicka",
			"Potion of Vigorous Magicka",
			"Potion of Extreme Magicka",
			"Potion of Ultimate Magicka"
		}
	}'
          },
          {
            kind => 'variable',
            name => 'name',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'strength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'weight',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'POTION_TYPE_SELECTED',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'POTION_TYPE',
            initializer => '= HEALTH'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'SYMBOL',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const char',
            initializer => '= \'P\''
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomItemGenerator',
      kind => 'class',
      derived => [
        {
          name => 'RandomWeapon',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'RandomItemGenerator.h'
      },
      all_members => [
        {
          name => 'CreateItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'ITEM_TYPES',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'RandomItemGenerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetItemNames',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetName',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetSpeed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetSymbol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetType',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetWeight',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'speed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'symbol',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'type',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'weight',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => '~RandomItemGenerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'RandomItemGenerator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~RandomItemGenerator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetType',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'choice',
                type => 'int'
              }
            ],
            reimplemented_by => [
              {
                name => 'SetType'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetItemNames',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'file_name',
                type => 'string'
              }
            ],
            reimplemented_by => [
              {
                name => 'SetItemNames'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetName',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name_index',
                type => 'int'
              },
              {
                declaration_name => 'type',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetStrength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetWeight',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetSpeed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetSymbol',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'char'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CreateItem',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'char'
              },
              {
                declaration_name => 'item_type_amount',
                type => 'char'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'name',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'ITEM_TYPES',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[20]',
            initializer => '{}'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'strength',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'weight',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'speed',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'symbol',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomWeapon',
      kind => 'class',
      base => [
        {
          name => 'RandomItemGenerator',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'RandomWeapon.h'
      },
      all_members => [
        {
          name => 'CreateItem',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'GenerateRandomWeapon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        },
        {
          name => 'ITEM_TYPES',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'RandomItemGenerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'RandomWeapon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        },
        {
          name => 'SetItemNames',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        },
        {
          name => 'SetName',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetSpeed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetSymbol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'SetType',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        },
        {
          name => 'SetWeight',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'speed',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'symbol',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        },
        {
          name => 'type',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => 'weapon_types',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        },
        {
          name => 'weight',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'RandomItemGenerator'
        },
        {
          name => '~RandomItemGenerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomItemGenerator'
        },
        {
          name => '~RandomWeapon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeapon'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'RandomWeapon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~RandomWeapon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'SetType',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'choice',
                type => 'int'
              }
            ],
            reimplements => {
              name => 'SetType'
            }
          },
          {
            kind => 'function',
            name => 'SetItemNames',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'file_name',
                type => 'string'
              }
            ],
            reimplements => {
              name => 'SetItemNames'
            }
          },
          {
            kind => 'function',
            name => 'GenerateRandomWeapon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'symbol',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            initializer => '= \'W\''
          },
          {
            kind => 'variable',
            name => 'weapon_types',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[5]',
            initializer => '{
		"SWORD",
		"DUAL SWORD",
		"SPEAR",
		"GREAT SWORD",
		"KNIFE"
	}'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomWeaponGenerator',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'RandomWeaponGenerator.h'
      },
      all_members => [
        {
          name => 'RandomWeaponGenerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeaponGenerator'
        },
        {
          name => '~RandomWeaponGenerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'RandomWeaponGenerator'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'RandomWeaponGenerator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~RandomWeaponGenerator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'TitleScreenManager',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'TitleScreenManager.h'
      },
      all_members => [
        {
          name => 'height',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'TitleScreenManager'
        },
        {
          name => 'LoadTitle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'on_title_screen',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'PrintTitle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'ReadTitle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'RenderTitle',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'screen_height',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'TitleScreenManager'
        },
        {
          name => 'screen_width',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'TitleScreenManager'
        },
        {
          name => 'title_map',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'title_screen_file_contents',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'WaitForInput',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'TitleScreenManager'
        },
        {
          name => 'width',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'TitleScreenManager'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'WaitForInput',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'LoadTitle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'int'
              },
              {
                declaration_name => 'height',
                type => 'int'
              },
              {
                declaration_name => 'input',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ReadTitle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'PrintTitle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'int'
              },
              {
                declaration_name => 'height',
                type => 'int'
              },
              {
                declaration_name => 'cw_manager',
                type => 'ConsoleWindowManager &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RenderTitle',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'cw_manager',
                type => 'ConsoleWindowManager &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'on_title_screen',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= true'
          },
          {
            kind => 'variable',
            name => 'title_map',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char *',
            initializer => '= nullptr'
          },
          {
            kind => 'variable',
            name => 'title_screen_file_contents',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'screen_width',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const int',
            initializer => '= 858'
          },
          {
            kind => 'variable',
            name => 'screen_height',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const int',
            initializer => '= 300'
          },
          {
            kind => 'variable',
            name => 'width',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= NULL'
          },
          {
            kind => 'variable',
            name => 'height',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= NULL'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'UserInterfaceManager',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'UserInterfaceManger.h'
      },
      all_members => [
        {
          name => 'actions',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'UserInterfaceManager'
        },
        {
          name => 'inventory',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'UserInterfaceManager'
        },
        {
          name => 'stats',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'UserInterfaceManager'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'actions',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< std::string >',
            initializer => '{
		"<------------------------------------------- A C T I O N S ->",
		"|                                                           |",
		"|                                                           |",
		"|                                                           |",
		"|                                                           |",
		"|                                                           |",
		"|                                                           |",
		"|                                                           |",
		":-----------------------------------------------------------;",
	}'
          },
          {
            kind => 'variable',
            name => 'stats',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< std::string >',
            initializer => '{
		"<-------------------v---- S T A T S ->",
		"|                   |                |",
		"|   H E A L T H     |                |",
		"|                   |                |",
		"|   S H I E L D     |                |",
		"|                   |                |",
		"|   M A G I C       |                |",
		"|                   |                |",
		":-------------------^----------------;",
	}'
          },
          {
            kind => 'variable',
            name => 'inventory',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::vector< std::string >',
            initializer => '{
		"<------------------------------------------------------------------------------- I N V E N T O R Y ->",
		"/-- P O T I O N S ----------------------------------------------------------------------------------]",
		"| HEALTH 0                                                                                          |",
		"| SHIELD 0                                                                                          |",
		"| MAGIC 0                                                                                           |",
		"/-- W E A P O N S ----------------------------------------------------------------------------------]",
		"| BLADE OF A THOUSAND CUTS                                                                          |",
		"| NIGHTBANE                                                                                         |",
		"| VENOM CARVER                                                                                      |",
		"| ANNIHILATION SABRE                                                                                |",
		"/-- A R M O U R ------------------------------------------------------------------------------------]",
		"| SOLDIER\'S TUNIC OF CATACLYSMS                                                                     |",
		"| SILENT ARMOR OF THE WICKED                                                                        |",
		"| STORMGUARD DEMON GREATPLATE                                                                       |",
		"/-- T R I N K E T S --------------------------------------------------------------------------------]",
		"| MIGHT OF FALLEN SOULS                                                                             |",
		"| HOPE OF CARNAGE                                                                                   |",
		"/---------------------------------------------------------------------------------------------------]",
		"|                                                                                                   |",
		":---------------------------------------------------------------------------------------------------;"
	}'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'Weapon',
      kind => 'class',
      inner => [
      ],
      includes => {
        local => 'no',
        name => 'Armour.h'
      },
      all_members => [
        {
          name => 'ARMOUR',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'CreateNewWeapon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'GenerateRandomNumber',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'SetStrength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'SetWeaponName',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'SetWeaponType',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'SHIELD',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'strength',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'SWORD',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'SYMBOL',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Weapon'
        },
        {
          name => 'Weapon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'WEAPON_NAME_CHOICES',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'WEAPON_TYPE',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'WEAPON_TYPE_SELECTED',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => 'weight',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        },
        {
          name => '~Weapon',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Weapon'
        }
      ],
      public_typedefs => {
        members => [
          {
            kind => 'enum',
            name => 'WEAPON_TYPE',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'SWORD',
                brief => {},
                detailed => {}
              },
              {
                name => 'SHIELD',
                brief => {},
                detailed => {}
              },
              {
                name => 'ARMOUR',
                brief => {},
                detailed => {}
              }
            ]
          },
          {
            kind => 'enumvalue',
            name => 'SWORD',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'SHIELD',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          },
          {
            kind => 'enumvalue',
            name => 'ARMOUR',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => '@'
          }
        ]
      },
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Weapon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => '~Weapon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'GenerateRandomNumber',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'unsigned int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetWeaponType',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'WEAPON_TYPE',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'weapon_choice',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetWeaponName',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'weapon_name_index',
                type => 'int'
              },
              {
                declaration_name => 'WEAPON_TYPE_SELECTED',
                type => 'WEAPON_TYPE'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetStrength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CreateNewWeapon',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'WEAPON_NAME_CHOICES',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            arguments => '[20]',
            initializer => '{
		"Might of Fallen Souls",
		"Hope of Carnage",
		"Soldier\'s Tunic of Cataclysms",
		"Silent Armor of the Wicked",
		"Stormguard Demon Greatplate",
		"Vindication Scaled Armor",
		"Ivory Chestpiece of Smoldering Fortunes",
		"Bronze Breastplate of Imminent Vengeance",
		"Batteplate of Hallowed Dreams",
		"Chestplate of Infernal Punishment",
		"Edge of Discipline",
		"Scales of the Breaking Storm",
		"Retribution Greatplate of the Wicked",
		"Battleworn Vest of the Daywalker",
		"Thunderguard Titanium Chestpiece",
		"Vengeance Golden Chestplate",
		"Obsidian Cuirass of Hallowed Freedom",
		"Iron Tunic of Blessed Kings",
		"Vest of Blessed Memories",
		"Chestguard of Fleeting Might"
	}'
          },
          {
            kind => 'variable',
            name => 'name',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'strength',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'weight',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => 'WEAPON_TYPE_SELECTED',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'WEAPON_TYPE',
            initializer => '= SWORD'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'SYMBOL',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const char',
            initializer => '= \'W\''
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  concepts => [
  ],
  namespaces => [
    {
      name => 'Macro',
      functions => {
        members => [
          {
            kind => 'function',
            name => 'GoToScreenPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'C',
                type => 'short'
              },
              {
                declaration_name => 'R',
                type => 'short'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RepositionWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'int'
              },
              {
                declaration_name => 'height',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ReplaceAll',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'str',
                type => 'string'
              },
              {
                declaration_name => 'from',
                type => 'const string &'
              },
              {
                declaration_name => 'to',
                type => 'const string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Separate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'input',
                type => 'int'
              },
              {
                declaration_name => 'from',
                type => 'char'
              },
              {
                declaration_name => 'count',
                type => 'char'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GenerateRandomNumber',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GenerateRandomNumberWithoutZero',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max',
                type => 'int'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'std',
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'Armour.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'CombatManager.cpp',
      includes => [
        {
          name => 'CombatManager.h',
          ref => '_combat_manager_8h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'CombatManager.h',
      includes => [
        {
          name => 'Player.h',
          ref => '_player_8h'
        },
        {
          name => 'Enemy.h',
          ref => '_enemy_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/CombatManager.cpp',
          ref => '_combat_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.h',
          ref => '_player_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsoleRendering.cpp',
      includes => [
        {
          name => 'ConsoleRendering.h',
          ref => '_console_rendering_8h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsoleRendering.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'UserInterfaceManger.h',
          ref => '_user_interface_manger_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/ConsoleRendering.cpp',
          ref => '_console_rendering_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/InventoryManager.cpp',
          ref => '_inventory_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsoleWindowManager.cpp',
      includes => [
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsoleWindowManager.h',
      includes => [
        {
          name => 'windows.h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/ConsoleWindowManager.cpp',
          ref => '_console_window_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Debug.cpp',
          ref => '_debug_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Macro.cpp',
          ref => '_macro_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.cpp',
          ref => '_player_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.h',
          ref => '_player_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/TitleScreenManager.cpp',
          ref => '_title_screen_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Debug.cpp',
      includes => [
        {
          name => 'iostream'
        },
        {
          name => 'Debug.h',
          ref => '_debug_8h'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Debug.h',
      includes => [
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/Debug.cpp',
          ref => '_debug_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Enemy.cpp',
      includes => [
        {
          name => 'Enemy.h',
          ref => '_enemy_8h'
        },
        {
          name => 'fstream'
        },
        {
          name => 'iostream'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Enemy.h',
      includes => [
        {
          name => 'NonPlayableCharacter.h',
          ref => '_non_playable_character_8h'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/CombatManager.h',
          ref => '_combat_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Enemy.cpp',
          ref => '_enemy_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.h',
          ref => '_player_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'GenericFriendly.cpp',
      includes => [
        {
          name => 'GenericFriendly.h',
          ref => '_generic_friendly_8h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'GenericFriendly.h',
      includes => [
        {
          name => 'NonPlayableCharacter.h',
          ref => '_non_playable_character_8h'
        },
        {
          name => 'fstream'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/GenericFriendly.cpp',
          ref => '_generic_friendly_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.h',
          ref => '_player_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'InventoryManager.cpp',
      includes => [
        {
          name => 'InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'ConsoleRendering.h',
          ref => '_console_rendering_8h'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'iostream'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'InventoryManager.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'vector'
        },
        {
          name => 'Player.h',
          ref => '_player_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'UserInterfaceManger.h',
          ref => '_user_interface_manger_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/ConsoleRendering.h',
          ref => '_console_rendering_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/InventoryManager.cpp',
          ref => '_inventory_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.h',
          ref => '_player_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Macro.cpp',
      includes => [
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'time.h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Macro.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/CombatManager.cpp',
          ref => '_combat_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/ConsoleRendering.cpp',
          ref => '_console_rendering_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Debug.cpp',
          ref => '_debug_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Enemy.cpp',
          ref => '_enemy_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/GenericFriendly.cpp',
          ref => '_generic_friendly_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Macro.cpp',
          ref => '_macro_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/MapManager.cpp',
          ref => '_map_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/NonPlayableCharacter.cpp',
          ref => '_non_playable_character_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.cpp',
          ref => '_player_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/RandomItemGenerator.cpp',
          ref => '_random_item_generator_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/RandomWeapon.cpp',
          ref => '_random_weapon_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/TitleScreenManager.cpp',
          ref => '_title_screen_manager_8cpp'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'GoToScreenPosition',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'C',
                type => 'short'
              },
              {
                declaration_name => 'R',
                type => 'short'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RepositionWindow',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'width',
                type => 'int'
              },
              {
                declaration_name => 'height',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ReplaceAll',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'str',
                type => 'string'
              },
              {
                declaration_name => 'from',
                type => 'const string &'
              },
              {
                declaration_name => 'to',
                type => 'const string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Separate',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'input',
                type => 'int'
              },
              {
                declaration_name => 'from',
                type => 'char'
              },
              {
                declaration_name => 'count',
                type => 'char'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GenerateRandomNumber',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GenerateRandomNumberWithoutZero',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'max',
                type => 'int'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'main.cpp',
      includes => [
        {
          name => 'CombatManager.h',
          ref => '_combat_manager_8h'
        },
        {
          name => 'ConsoleRendering.h',
          ref => '_console_rendering_8h'
        },
        {
          name => 'Player.h',
          ref => '_player_8h'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'Enemy.h',
          ref => '_enemy_8h'
        },
        {
          name => 'InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'TitleScreenManager.h',
          ref => '_title_screen_manager_8h'
        },
        {
          name => 'UserInterfaceManger.h',
          ref => '_user_interface_manger_8h'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'USER_INTERFACE_MANGER',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'UserInterfaceManager'
          },
          {
            kind => 'variable',
            name => 'CONSOLE_WINDOW_CONTROL',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ConsoleWindowManager'
          },
          {
            kind => 'variable',
            name => 'CONSOLE_RENDERING',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'ConsoleRendering'
          },
          {
            kind => 'variable',
            name => 'TITLE_SCREEN_MANAGER',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'TitleScreenManager'
          },
          {
            kind => 'variable',
            name => 'INVENTORY_MANAGER',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'InventoryManager'
          },
          {
            kind => 'variable',
            name => 'COMBAT_MANAGEER',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'CombatManager'
          },
          {
            kind => 'variable',
            name => 'MAP_MANAGER',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'MapManager'
          },
          {
            kind => 'variable',
            name => 'PLAYER',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Player'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'MapManager.cpp',
      includes => [
        {
          name => 'iostream'
        },
        {
          name => 'fstream'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'MapManager.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'Player.h',
          ref => '_player_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'GenericFriendly.h',
          ref => '_generic_friendly_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/ConsoleRendering.h',
          ref => '_console_rendering_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Debug.cpp',
          ref => '_debug_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Enemy.h',
          ref => '_enemy_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/GenericFriendly.h',
          ref => '_generic_friendly_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/InventoryManager.cpp',
          ref => '_inventory_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/MapManager.cpp',
          ref => '_map_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.cpp',
          ref => '_player_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'NonPlayableCharacter.cpp',
      includes => [
        {
          name => 'NonPlayableCharacter.h',
          ref => '_non_playable_character_8h'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        },
        {
          name => 'fstream'
        },
        {
          name => 'cmath'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'NonPlayableCharacter.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/Enemy.h',
          ref => '_enemy_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/GenericFriendly.h',
          ref => '_generic_friendly_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/NonPlayableCharacter.cpp',
          ref => '_non_playable_character_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Player.cpp',
      includes => [
        {
          name => 'iostream'
        },
        {
          name => 'Player.h',
          ref => '_player_8h'
        },
        {
          name => 'MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Player.h',
      includes => [
        {
          name => 'InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'UserInterfaceManger.h',
          ref => '_user_interface_manger_8h'
        },
        {
          name => 'Enemy.h',
          ref => '_enemy_8h'
        },
        {
          name => 'GenericFriendly.h',
          ref => '_generic_friendly_8h'
        },
        {
          name => 'CombatManager.h',
          ref => '_combat_manager_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/CombatManager.h',
          ref => '_combat_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/MapManager.h',
          ref => '_map_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.cpp',
          ref => '_player_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/TitleScreenManager.h',
          ref => '_title_screen_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Potion.cpp',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'ctime'
        },
        {
          name => 'cstdlib'
        },
        {
          name => 'Potion.h',
          ref => '_potion_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Potion.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/Potion.cpp',
          ref => '_potion_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomItemGenerator.cpp',
      includes => [
        {
          name => 'RandomItemGenerator.h',
          ref => '_random_item_generator_8h'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomItemGenerator.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/RandomItemGenerator.cpp',
          ref => '_random_item_generator_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/RandomWeapon.h',
          ref => '_random_weapon_8h'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomWeapon.cpp',
      includes => [
        {
          name => 'RandomWeapon.h',
          ref => '_random_weapon_8h'
        },
        {
          name => 'fstream'
        },
        {
          name => 'iostream'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomWeapon.h',
      includes => [
        {
          name => 'RandomItemGenerator.h',
          ref => '_random_item_generator_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/RandomWeapon.cpp',
          ref => '_random_weapon_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'RandomWeaponGenerator.h',
      includes => [
        {
          name => 'string'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'TitleScreenManager.cpp',
      includes => [
        {
          name => 'TitleScreenManager.h',
          ref => '_title_screen_manager_8h'
        },
        {
          name => 'iostream'
        },
        {
          name => 'ConsoleWindowManager.h',
          ref => '_console_window_manager_8h'
        },
        {
          name => 'Macro.h',
          ref => '_macro_8h'
        },
        {
          name => 'stdio.h'
        },
        {
          name => 'fcntl.h'
        },
        {
          name => 'windows.h'
        },
        {
          name => 'stdlib.h'
        },
        {
          name => 'fstream'
        },
        {
          name => 'string'
        },
        {
          name => 'regex'
        }
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'TitleScreenManager.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'Player.h',
          ref => '_player_8h'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/TitleScreenManager.cpp',
          ref => '_title_screen_manager_8cpp'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'UserInterfaceManger.h',
      includes => [
        {
          name => 'string'
        },
        {
          name => 'vector'
        }
      ],
      included_by => [
        {
          name => 'D:/University/ca-A00269349/Rogue/ConsoleRendering.h',
          ref => '_console_rendering_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/InventoryManager.h',
          ref => '_inventory_manager_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/Player.h',
          ref => '_player_8h'
        },
        {
          name => 'D:/University/ca-A00269349/Rogue/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
